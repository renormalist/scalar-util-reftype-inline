use ExtUtils::MakeMaker;

WriteMakefile(
    NAME => 'Scalar::Util::reftype::Inline',
    PREREQ_PM => {
                  'XSLoader' => '0',
                  'Sub::Exporter' => '0',
                  'Devel::CallChecker' => '0',
                 },
);
