import argparse, sys

if sys.version_info < (3, 6, 0):
    sys.stderr.write('Python 3.6 or above is required.')
    exit(1)


def main(raw_data, language_data, concept_data, main_data):

    with open(raw_data, 'r', encoding='utf8') as raw_file, \
            open(language_data, 'w', encoding='utf8') as lang_file, \
            open(main_data, 'w', encoding='utf8') as main_file, \
            open(concept_data, 'w', encoding='utf8') as concept_file:

        # read first three lines from excel sheet (headers), skip langage info/cognate class columns
        semantic = [x.strip().upper() for x in raw_file.readline().split('\t')][7::3]
        portuguese = [x.strip().upper() for x in raw_file.readline().split('\t')][7::3]
        english = [x.strip().upper() for x in raw_file.readline().split('\t')][7::3]
        concepticon = [x.strip().upper() for x in raw_file.readline().split('\t')][7::3]

        # write headers
        concept_file.write('Name\tPortuguese\tSemantic\tConcepticon\n')
        lang_file.write('Language\tSub-Family\tISO_Code\tLanguage_ID\tGlottolog\tLongitude\tLatitude\n')
        main_file.write('Language\tConcept\tPortuguese\tForm\tSemantic\tConcepticon\tCognate\tNotes\n')

        for e, p, s, c in zip(english, portuguese, semantic, concepticon):
            concept_file.write(f'{e}\t{p}\t{s}\t{c}\n')

        for line in raw_file.readlines():
            # the current align_matrix.tsv is missing one Notes column at the end(rightmost), so it is added here manually.
            # if the align_matrix.tsv has a non-empty Notes column at the end(rightmost), delte this part(or maybe not)
            line = line + '\t'
            line = line.split('\t')
            lang_file.write(f'{line[0]}\t{line[1]}\t{line[2]}\t{line[3]}\t{line[4]}\t{line[5]}\t{line[6]}\n')

            for i, (form, cognate_class, notes) in enumerate(zip(line[7::3], line[8::3], line[9::3])):
                main_file.write(f'{line[0]}\t{english[i]}\t{portuguese[i]}\t'
                                f'{form}\t{semantic[i]}\t{concepticon[i]}\t{cognate_class.strip()}\t{notes.strip()}\n')  # notes.strip()


if __name__ == '__main__':
    args = argparse.ArgumentParser()
    args.add_argument('raw_data', help="TSV with three header rows: semantic class, Portuguese, English")
    args.add_argument('language_data', help="List of languages and their ISO/Glottocodes with coordinates.")
    args.add_argument('concept_data', help="List of English words generated by this script.")
    args.add_argument('main_data', help="Full dataset generated by this script.")
    args = args.parse_args()
    main(args.raw_data, args.language_data, args.concept_data, args.main_data)