#' Absenteeism
#'
#' The Human Freedom Index is a report that attempts to summarize the idea of "freedom"
#' through a bunch of different variables for many countries around the globe.
#' It serves as a rough objective measure for the relationships between the different
#' types of freedom - whether it's political, religious, economical or personal freedom -
#' and other social and economic circumstances. The Human Freedom Index is an annually
#' co-published report by the Cato Institute, the Fraser Institute, and the Liberales
#' Institut at the Friedrich Naumann Foundation for Freedom.
#'
#' This dataset contains information from Human Freedom Index reports from 2008-2016.
#'
#'
#' @name hfi
#' @docType data
#' @format A data frame with 1458 observations on the following 123 variables.
#' \describe{
#'   \item{year}{Year}
#'   \item{ISO_code}{ISO code of country}
#'   \item{countries}{Name of country}
#'   \item{region}{Region where country is located}
#'   \item{pf_rol_procedural}{Procedural justice}
#'   \item{pf_rol_civil}{Civil justice}
#'   \item{pf_rol_criminal}{Criminal justice}
#'   \item{pf_rol}{Rule of law}
#'   \item{pf_ss_homicide}{Homicide}
#'   \item{pf_ss_disappearances_disap}{Disappearances}
#'   \item{pf_ss_disappearances_violent}{Violent conflicts}
#'   \item{pf_ss_disappearances_organized}{Violent conflicts}
#'   \item{pf_ss_disappearances_fatalities}{Terrorism fatalities}
#'   \item{pf_ss_disappearances_injuries}{Terrorism injuries}
#'   \item{pf_ss_disappearances}{Disappearances, conflict, and terrorism}
#'   \item{pf_ss_women_fgm}{Female genital mutilation}
#'   \item{pf_ss_women_missing}{Missing women}
#'   \item{pf_ss_women_inheritance_widows}{Inheritance rights for widows}
#'   \item{pf_ss_women_inheritance_daughters}{Inheritance rights for daughters}
#'   \item{pf_ss_women_inheritance}{Inheritance}
#'   \item{pf_ss_women}{Women's security}
#'   \item{pf_ss}{Security and safety}
#'   \item{pf_movement_domestic}{Freedom of domestic movement}
#'   \item{pf_movement_foreign}{Freedom of foreign movement}
#'   \item{pf_movement_women}{Women's movement}
#'   \item{pf_movement}{Freedom of movement}
#'   \item{pf_religion_estop_establish}{Freedom to establish religious organizations}
#'   \item{pf_religion_estop_operate}{Freedom to operate religious organizations}
#'   \item{pf_religion_estop}{Freedom to establish and operate religious organizations}
#'   \item{pf_religion_harassment}{Harassment and physical hostilities}
#'   \item{pf_religion_restrictions}{Legal and regulatory restrictions}
#'   \item{pf_religion}{Religious freedom}
#'   \item{pf_association_association}{Freedom of association}
#'   \item{pf_association_assembly}{Freedom of assembly}
#'   \item{pf_association_political_establish}{Freedom to establish political parties}
#'   \item{pf_association_political_operate}{Freedom to operate political parties}
#'   \item{pf_association_political}{Freedom to establish and operate political parties}
#'   \item{pf_association_prof_establish}{Freedom to establish professional organizations}
#'   \item{pf_association_prof_operate}{Freedom to operate professional organizations}
#'   \item{pf_association_prof}{Freedom to establish and operate professional organizations}
#'   \item{pf_association_sport_establish}{Freedom to establish educational, sporting, and cultural organizations}
#'   \item{pf_association_sport_operate}{Freedom to operate educational, sporting, and cultural organizations}
#'   \item{pf_association_sport}{Freedom to establish and operate educational, sporting, and cultural organizations}
#'   \item{pf_association}{Freedom to associate and assemble with peaceful individuals or organizations}
#'   \item{pf_expression_killed}{Press killed}
#'   \item{pf_expression_jailed}{Press jailed}
#'   \item{pf_expression_influence}{Laws and regulations that influence media content}
#'   \item{pf_expression_control}{Political pressures and controls on media content}
#'   \item{pf_expression_cable}{Access to cable/satellite}
#'   \item{pf_expression_newspapers}{Access to foreign newspapers}
#'   \item{pf_expression_internet}{State control over internet access}
#'   \item{pf_expression}{Freedom of expression}
#'   \item{pf_identity_legal}{Legal gender}
#'   \item{pf_identity_parental_marriage}{Parental rights in marriage}
#'   \item{pf_identity_parental_divorce}{Parental rights after divorce}
#'   \item{pf_identity_parental}{Parental rights}
#'   \item{pf_identity_sex_male}{Male-to-male relationships}
#'   \item{pf_identity_sex_female}{Female-to-female relationships}
#'   \item{pf_identity_sex}{Same-sex relationships}
#'   \item{pf_identity_divorce}{Divor}
#'   \item{pf_identity}{Identity and relationships}
#'   \item{pf_score}{Personal Freedom (score)}
#'   \item{pf_rank}{Personal Freedom (rank)}
#'   \item{ef_government_consumption}{Government consumption}
#'   \item{ef_government_transfers}{Transfers and subsidies}
#'   \item{ef_government_enterprises}{Government enterprises and investments}
#'   \item{ef_government_tax_income}{Top marginal income tax rate - Top marginal income tax rates}
#'   \item{ef_government_tax_payroll}{Top marginal income tax rate - Top marginal income and payroll tax rate}
#'   \item{ef_government_tax}{Top marginal tax rate}
#'   \item{ef_government}{Size of government}
#'   \item{ef_legal_judicial}{Judicial independence}
#'   \item{ef_legal_courts}{Impartial courts}
#'   \item{ef_legal_protection}{Protection of property rights}
#'   \item{ef_legal_military}{Military interference in rule of law and politics}
#'   \item{ef_legal_integrity}{Integrity of the legal system}
#'   \item{ef_legal_enforcement}{Legal enforcement of contracts}
#'   \item{ef_legal_restrictions}{Regulatory restrictions on the sale of real property}
#'   \item{ef_legal_police}{Reliability of police}
#'   \item{ef_legal_crime}{Business costs of crime}
#'   \item{ef_legal_gender}{Gender adjustment}
#'   \item{ef_legal}{Legal system and property rights}
#'   \item{ef_money_growth}{Money growth}
#'   \item{ef_money_sd}{Standard deviation of inflation}
#'   \item{ef_money_inflation}{Inflation - most recent year}
#'   \item{ef_money_currency}{Freedom to own foreign currency bank account}
#'   \item{ef_money}{Sound money}
#'   \item{ef_trade_tariffs_revenue}{Tariffs - Revenue from trade taxes (percentage of trade sector)}
#'   \item{ef_trade_tariffs_mean}{Tariffs - Mean tariff rate}
#'   \item{ef_trade_tariffs_sd}{Tariffs - Standard deviation of tariffs rates}
#'   \item{ef_trade_tariffs}{Tariffs}
#'   \item{ef_trade_regulatory_nontariff}{Regulatory trade barriers - Nontariff trade barriers}
#'   \item{ef_trade_regulatory_compliance}{Regulatory trade barriers - Compliance costs of importing and exporting}
#'   \item{ef_trade_regulatory}{Regulatory trade barriers}
#'   \item{ef_trade_black}{Black-market exchange rates}
#'   \item{ef_trade_movement_foreign}{Controls of the movement of capital and people - Foreign ownership/investment restrictions}
#'   \item{ef_trade_movement_capital}{Controls of the movement of capital and people - Capital controls}
#'   \item{ef_trade_movement_visit}{Controls of the movement of capital and people - Freedom of foreigners to visit}
#'   \item{ef_trade_movement}{Controls of the movement of capital and people}
#'   \item{ef_trade}{Freedom to trade internationally}
#'   \item{ef_regulation_credit_ownership}{Credit market regulations - Ownership of banks}
#'   \item{ef_regulation_credit_private}{Credit market regulations - Private sector credit}
#'   \item{ef_regulation_credit_interest}{Credit market regulations - Interest rate controls/negative real interest rates}
#'   \item{ef_regulation_credit}{Credit market regulation}
#'   \item{ef_regulation_labor_minwage}{Labor market regulations - Hiring regulations and minimum wage}
#'   \item{ef_regulation_labor_firing}{Labor market regulations - Hiring and firing regulations}
#'   \item{ef_regulation_labor_bargain}{Labor market regulations - Centralized collective bargaining}
#'   \item{ef_regulation_labor_hours}{Labor market regulations - Hours regulations}
#'   \item{ef_regulation_labor_dismissal}{Labor market regulations - Dismissal regulations}
#'   \item{ef_regulation_labor_conscription}{Labor market regulations - Conscription}
#'   \item{ef_regulation_labor}{Labor market regulation}
#'   \item{ef_regulation_business_adm}{Business regulations - Administrative requirements}
#'   \item{ef_regulation_business_bureaucracy}{Business regulations - Bureaucracy costs}
#'   \item{ef_regulation_business_start}{Business regulations - Starting a business}
#'   \item{ef_regulation_business_bribes}{Business regulations - Extra payments/bribes/favoritism}
#'   \item{ef_regulation_business_licensing}{Business regulations - Licensing restrictions}
#'   \item{ef_regulation_business_compliance}{Business regulations - Cost of tax compliance}
#'   \item{ef_regulation_business}{Business regulation}
#'   \item{ef_regulation}{Economic freedom regulation score}
#'   \item{ef_score}{Economic freedom score}
#'   \item{ef_rank}{Economic freedom rank}
#'   \item{hf_score}{Human freedom score}
#'   \item{hf_rank}{Human freedom rank}
#'   \item{hf_quartile}{Human freedom quartile}
#'   }
#' @source Ian Vasquez and Tanja Porcnik, The Human Freedom Index 2018:
#' A Global Measurement of Personal, Civil, and Economic Freedom
#' (Washington: Cato Institute, Fraser Institute, and the Friedrich Naumann
#' Foundation for Freedom, 2018).
#' \url{https://www.cato.org/sites/cato.org/files/human-freedom-index-files/human-freedom-index-2016.pdf}.
#' \url{https://www.kaggle.com/gsutters/the-human-freedom-index}.
#' @keywords datasets
#'
"hfi"
