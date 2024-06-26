# between-subjects -------------------------------------------------

test_that(
  "check pairwise displays - between-subjects",
  {
    set.seed(123)
    expect_doppelganger(
      title = "between - parametric - only non-significant",
      fig = ggbetweenstats(
        ggplot2::msleep,
        vore,
        brainwt,
        type = "p",
        results.subtitle = FALSE,
        p.adjust.method = "fdr",
        pairwise.display = "ns",
        digits = 3L
      )
    )

    set.seed(123)
    expect_doppelganger(
      title = "between - parametric - only significant",
      fig = ggbetweenstats(
        ggplot2::msleep,
        vore,
        brainwt,
        type = "p",
        results.subtitle = FALSE,
        p.adjust.method = "fdr",
        pairwise.display = "s",
        digits = 3L
      )
    )

    set.seed(123)
    expect_doppelganger(
      title = "between - parametric - all",
      fig = ggbetweenstats(
        ggplot2::msleep,
        vore,
        brainwt,
        type = "p",
        results.subtitle = FALSE,
        p.adjust.method = "fdr",
        pairwise.display = "all",
        digits = 3L
      )
    )

    set.seed(123)
    expect_doppelganger(
      title = "between - non-parametric - only non-significant",
      fig = ggbetweenstats(
        movies_long,
        mpaa,
        rating,
        type = "np",
        results.subtitle = FALSE,
        p.adjust.method = "bonferroni",
        pairwise.display = "ns",
        digits = 3L
      )
    )

    set.seed(123)
    expect_doppelganger(
      title = "between - non-parametric - only significant",
      fig = ggbetweenstats(
        movies_long,
        mpaa,
        rating,
        type = "np",
        results.subtitle = FALSE,
        p.adjust.method = "bonferroni",
        pairwise.display = "s",
        digits = 3L
      )
    )

    set.seed(123)
    expect_doppelganger(
      title = "between - non-parametric - all",
      fig = ggbetweenstats(
        movies_long,
        mpaa,
        rating,
        type = "np",
        results.subtitle = FALSE,
        p.adjust.method = "bonferroni",
        pairwise.display = "all",
        digits = 3L
      )
    )

    set.seed(123)
    expect_doppelganger(
      title = "between - robust - only non-significant",
      fig = ggbetweenstats(
        ggplot2::msleep,
        vore,
        sleep_rem,
        type = "r",
        results.subtitle = FALSE,
        p.adjust.method = "holm",
        pairwise.display = "ns",
        digits = 3L
      )
    )

    set.seed(123)
    expect_doppelganger(
      title = "between - robust - only significant",
      fig = ggbetweenstats(
        ggplot2::msleep,
        vore,
        sleep_rem,
        type = "r",
        results.subtitle = FALSE,
        p.adjust.method = "holm",
        pairwise.display = "s",
        digits = 3L
      )
    )

    set.seed(123)
    expect_doppelganger(
      title = "between - robust - all",
      fig = ggbetweenstats(
        ggplot2::msleep,
        vore,
        sleep_rem,
        type = "r",
        results.subtitle = FALSE,
        p.adjust.method = "holm",
        pairwise.display = "all",
        digits = 3L
      )
    )

    set.seed(123)
    expect_doppelganger(
      title = "between - bayes",
      fig = ggbetweenstats(
        mtcars,
        cyl,
        mpg,
        type = "bayes",
        results.subtitle = FALSE,
        digits = 3L
      )
    )
  }
)

# within-subjects -------------------------------------------------

test_that(
  "check pairwise displays - within-subjects",
  {
    set.seed(123)
    expect_doppelganger(
      title = "within - parametric - only non-significant",
      fig = ggwithinstats(
        bugs_long,
        condition,
        desire,
        type = "p",
        results.subtitle = FALSE,
        p.adjust.method = "fdr",
        pairwise.display = "ns",
        digits = 3L
      )
    )

    set.seed(123)
    expect_doppelganger(
      title = "within - parametric - only significant",
      fig = ggwithinstats(
        bugs_long,
        condition,
        desire,
        type = "p",
        results.subtitle = FALSE,
        p.adjust.method = "fdr",
        pairwise.display = "s",
        digits = 3L
      )
    )

    set.seed(123)
    expect_doppelganger(
      title = "within - parametric - all",
      fig = ggwithinstats(
        bugs_long,
        condition,
        desire,
        type = "p",
        results.subtitle = FALSE,
        p.adjust.method = "fdr",
        pairwise.display = "all",
        digits = 3L
      )
    )

    set.seed(123)
    expect_doppelganger(
      title = "within - non-parametric - only non-significant",
      fig = ggwithinstats(
        bugs_long,
        condition,
        desire,
        type = "np",
        results.subtitle = FALSE,
        p.adjust.method = "bonferroni",
        pairwise.display = "ns",
        digits = 3L
      )
    )

    set.seed(123)
    expect_doppelganger(
      title = "within - non-parametric - only significant",
      fig = ggwithinstats(
        bugs_long,
        condition,
        desire,
        type = "np",
        results.subtitle = FALSE,
        p.adjust.method = "bonferroni",
        pairwise.display = "s",
        digits = 3L
      )
    )

    set.seed(123)
    expect_doppelganger(
      title = "within - non-parametric - all",
      fig = ggwithinstats(
        bugs_long,
        condition,
        desire,
        type = "np",
        results.subtitle = FALSE,
        p.adjust.method = "bonferroni",
        pairwise.display = "all",
        digits = 3L
      )
    )

    set.seed(123)
    expect_doppelganger(
      title = "within - robust - only non-significant",
      fig = ggwithinstats(
        bugs_long,
        condition,
        desire,
        type = "r",
        results.subtitle = FALSE,
        p.adjust.method = "holm",
        pairwise.display = "ns",
        digits = 3L
      )
    )

    set.seed(123)
    expect_doppelganger(
      title = "within - robust - only significant",
      fig = ggwithinstats(
        bugs_long,
        condition,
        desire,
        type = "r",
        results.subtitle = FALSE,
        p.adjust.method = "holm",
        pairwise.display = "s",
        digits = 3L
      )
    )

    set.seed(123)
    expect_doppelganger(
      title = "within - robust - all",
      fig = ggwithinstats(
        bugs_long,
        condition,
        desire,
        type = "r",
        results.subtitle = FALSE,
        p.adjust.method = "holm",
        pairwise.display = "all",
        digits = 3L
      )
    )

    set.seed(123)
    expect_doppelganger(
      title = "within - bayes",
      fig = ggwithinstats(
        bugs_long,
        condition,
        desire,
        type = "bayes",
        results.subtitle = FALSE,
        digits = 3L
      )
    )
  }
)


# caption -------------------------------------------------

test_that(
  "adding caption works",
  {
    set.seed(123)
    expect_doppelganger(
      title = "adding caption works",
      fig = ggwithinstats(
        bugs_long,
        condition,
        desire,
        type = "p",
        results.subtitle = FALSE,
        bf.message = FALSE,
        p.adjust.method = "fdr",
        pairwise.display = "ns",
        digits = 3L
      )
    )
  }
)
