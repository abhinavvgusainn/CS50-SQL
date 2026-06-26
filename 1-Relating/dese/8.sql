SELECT name, pupils FROM districts
JOIN expenditures on "districts"."id" = "expenditures"."district_id";