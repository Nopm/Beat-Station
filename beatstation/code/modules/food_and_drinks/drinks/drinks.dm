/obj/item/reagent_containers/food/drinks/soda_cans/guarana
	name = "Guaran� Antarctica"
	desc = "Guaran� Antarctica, the best."
	custom_price = 10
	icon = 'beatstation/icons/obj/drinks.dmi'
	icon_state = "guarana_can"
	list_reagents = list(/datum/reagent/consumable/guarana = 40, /datum/reagent/drug/burpinate = 5)
	foodtype = SUGAR
	var/list/slogans = list("A senha contra o Boko Moko!", "Viva mais com Guaran� Antarctica!", "Seja voc� mesmo, beba Guaran� Antarctica!", "Todo mundo tem sede de natureza!", "Guaran� Antarctica. Meu Brasil brasileiro!", "Guaran� Antarctica, o brasileirinho!",
	 "Guaran� Antarctica, eu gosto de voc�!", "Guaran� Antarctica, o pique total!", "Todo mundo um dia vira um guaran�!", "Este � o sabor!", "Uh! Uh! Uh! Guaran�! Antarctica!", "Tudo pede Guaran� Antarctica!", "Seja o que for, seja original!", "A pedida natural!",
	 "Guaran� Antarctica e voc�. Ningu�m Faz Igual!", "� o que �!", "Energia que contagia!", "Todo Mundo Quer! So a gente tem!", "Boral�!", "De Mau�s para Suas M�os!", "� coisa nossa!")

/obj/item/reagent_containers/food/drinks/soda_cans/guarana/attack(mob/living/M, mob/user, def_zone)
	..()
	if(M == user && reagents.total_volume > 0)
		to_chat(user, "<span class='notice'>[pick(slogans)]</span>")

/obj/item/reagent_containers/food/drinks/chimarrao
	name = "Chimarr�o"
	desc = "Hot mate herb tea in a wooden recipient"
	custom_price = 8
	icon = 'beatstation/icons/obj/drinks.dmi'
	icon_state = "chimarrao_cheio"
	list_reagents = list(/datum/reagent/consumable/chimarrao = 40)
	foodtype = VEGETABLES

/obj/item/reagent_containers/food/drinks/chimarrao/on_reagent_change(changetype)
	if(reagents.total_volume)
		icon_state = "chimarrao_cheio"
	else
		icon_state = "chimarrao_vazio"