# Data from [`opp_insights_colleges`](https://openintrostat.github.io/openintro/reference/opp_insights_colleges.md) that is restricted to 4-year, not-for-profit colleges.

Data from
[`opp_insights_colleges`](https://openintrostat.github.io/openintro/reference/opp_insights_colleges.md)
that is restricted to 4-year, not-for-profit colleges.

## Usage

``` r
opp_insights_colleges_4year
```

## Format

A dataframe with 1285 rows and 26 variables

- `super_opeid`:

  Numeric, a college or university identifier constructed by the
  Opportunity Insights team based on tax records. It is similar but not
  identical to the U.S. Department of Education’s Office of
  Postsecondary Education ID (OPEID) and different from the ID in the
  Integrated Postsecondary Education Data System (IPEDS).

- `name`:

  Character vector, college name

- `region`:

  Factor, with levels `1` (Northeast), `2` (Midwest), `3` (South), `4`
  (West)

- `state`:

  Character vector, two letter state ID

- `tier_name`:

  Character vector, selectivity and type of college with 8 values,
  `Ivy Plus`, `Other elite schools (private and public)`,
  `Highly selective public`, `Highly selective private`,
  `Selective public`, `Selective private`, `Nonselective 4-year public`,
  `Nonselective 4-year private`,
  `Two-year (public and private not-for-profit)`,
  `Four-year for-profit`, `Two-year for-profit`

- `type`:

  Factor with 3 levels, `public`, `private non-profit`, `for-profit`

- `exp_instr_pc_2013`:

  Numeric, instructional expenditures per student in 2013

- `ipeds_enrollment_2013`:

  Numeric, total undergraduate enrollment in Fall 2013

- `sticker_price_2013`:

  Numeric, average annual cost of attendance in 2013

- `scorecard_netprice_2013`:

  Numeric, net annual cost of attendance for bottom income quintile in
  2013

- `grad_rate_150_p_2013`:

  Numeric, percentage of students graduating within 150% of normal time
  in 2013

- `avgfacsal_2013`:

  Numeric, average faculty salary in 2013

- `sat_avg_2013`:

  Numeric, average SAT scores (scaled to 1600) in 2013

- `endowment_pc_2000`:

  endowment assets per student in 2000

- `mr_kq5_pq1`:

  Numeric, mobility rate, top 20% of the income distribution

- `mr_ktop1_pq1`:

  Numeric, mobility rate, top 1% of the income distribution

- `par_median`:

  Numeric, median parent household income

- `par_q1`:

  Numeric, fraction of parents in first (bottom) income quintile

- `par_q2`:

  Numeric, fraction of parents in second income quintile

- `par_q3`:

  Numeric, fraction of parents in third income quintile

- `par_q4`:

  Numeric, fraction of parents in fourth income quintile

- `par_q5`:

  Numeric, fraction of parents in fifth income quintile

- `par_top5pc`:

  Numeric, fraction of parents in top 5% of income distribution

- `par_top1pc`:

  Numeric, fraction of parents in top 1% of income distribution

- `k_median`:

  Numeric, median child individual earnings in 2014 (at age 34)

- `k_top5pc`:

  Numeric, fraction of children in top 5% of income distribution

- `k_top1pc`:

  Numeric, fraction of children in top 1% of income distribution

## Source

Tables `mrc_table2.csv` and `mrc_table10.csv` from
<https://opportunityinsights.org/data/>

## References

Chetty, Raj, et al. "Income segregation and intergenerational mobility
across colleges in the United States." The Quarterly Journal of
Economics 135.3 (2020): 1567-1633.
