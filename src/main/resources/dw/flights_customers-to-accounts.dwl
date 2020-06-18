%dw 2.0
output application/json
---
payload map ( p , i ) -> {
	id: p.accountID default "",
	firstName: splitBy(p.name default ""," ")[0],
	lastName: splitBy(p.name default ""," ")[1],
	address: [p.street default "", p.city default "", p.state default ""] joinBy ", ",
	postal: p.postal default "",
	country: p.country default "",
	miles: p.miles default 0,
	creationDate: p.creationDate as String default "",
	"type": p.accountType default ""
}