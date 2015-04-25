/*
Author: Robert Holland
Date: 2014-11-28 16:30:24
Purpose: Show administered medications.
*/
use emar;
SELECT
	concat(hp.firstname, " ", hp.lastname) name
    , hm.medication
    , h.dose
    , hu.unit
    , h.admin_dttm
    -- , h.active_ind
FROM
	h_mar h
	, h_med hm
	, h_person hp
	, h_unit hu
WHERE
	h.person_id != 15
and
	h.active_ind = 1
and
	hm.id = h.medication
and
	hp.id = h.person_id
and
	hu.id = h.unit
order by
	h.admin_dttm desc
;

/*
vw_healthmar shows the same information
*/
