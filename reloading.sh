#!/bin/bash
#
#Reloading Check Script
tput setaf 4
echo "Reloading stock check script."
echo $date
echo "written by Paul Gariepy 2020"
echo "---------------------------------"
sleep 1
readarray contacts < contacts.txt

while true
do
 date=`date '+%d/%m/%Y_%H:%M:%S'`
 tput setaf 3
 item1name="CCI #500 Small Pistol Primers"
 echo "Checking $item1name @ PowderVallyInc"
 item1=$( curl -s https://www.powdervalleyinc.com/product/cci-500-small-pistol-primers-1000/ | grep 'class="stock in-stock"')
 if [[ $item1 == *"stock"* && $item1stocked == 0 ]]; then
   tput setaf 2
   echo -e "$item1name 1000ct are {RED}in stock! $date"
   for name in ${contacts[@]}
   do
    echo "$item1name is in stock at PowderVallyInc as of $date" | mutt -s "AmmoTracker" $name
    item1stocked=1
	done
 else
     echo "$item1name 1000ct are out of stock $date"
	 item1stocked=0
 fi
 echo "---------------------------------"
 #
 item2name="Berrys .356 / 9mm 124 Grain Hollow Base Flat Point Thick Plate"
 echo "Checking $item2name @ PowderVallyInc"
 item2=$( curl -s https://www.powdervalleyinc.com/product/berrys-356-9mm-124-gr-hbfp-tp1000/ | grep 'class="stock in-stock"')
 if [[ $item2 == *"stock"* && $item2stocked == 0 ]]; then
   tput setaf 2
   echo "$item2name 1000ct are in stock! $date"
   for name in ${contacts[@]}
   do
   echo "$item2name is in stock at PowderVallyInc as of $date" | mutt -s "AmmoTracker" $name
   item2stocked=1
   done
 else
     echo "C$item2name 1000ct are out of stock $date"
	 item2stocked=0

 fi
 echo "---------------------------------"
 item3name="Winchester Small Pistol Primers"
 echo "Checking $item3name @ PowderVallyInc"
 item3=$( curl -s https://www.powdervalleyinc.com/product/winchester-small-pistol-primers-1000/ | grep 'class="stock in-stock"')
 if [[ $item3 == *"stock"* && $item3stocked == 0 ]]; then
   tput setaf 2
   echo "$item3name 1000ct are in stock! $date"
   for name in ${contacts[@]}
   do
   echo "$item3name is in stock now at PowderVallyInc as of $date" | mutt -s "AmmoTracker" $name
   item3stocked=1
   done
 else
     echo "$item3name 1000ct are out of stock $date"
	 item3stocked=0

 fi
 echo "---------------------------------"
 item4name="Federal GM100M Small Pistol Match"
 echo "Checking $item4name @ PowderVallyInc"
 item4=$( curl -s https://www.powdervalleyinc.com/product/federal-gm100m-sm-pstl-match-1000/ | grep 'class="stock in-stock"')
 if [[ $item4 == *"stock"* && $item4stocked == 0 ]]; then
   tput setaf 2
   echo "$item4name 1000ct are in stock! $date"
   for name in ${contacts[@]}
   do
   echo "$item4name is in stock now at PowederVallyInc as of $date"  | mutt -s "AmmoTracker" $name
   item4stocked=1
   done
 else
     echo "$item4name 1000ct are out of stock $date"
	 item4stocked=0

 fi
 echo "---------------------------------"
 item5name="Federal #100 Small Pistol Primers"
 echo "Checking $item5name @ PowderVallyInc"
 item5=$( curl -s https://www.powdervalleyinc.com/product/federal-100-small-pistol-primers-1000/ | grep 'class="stock in-stock"')
 if [[ $item5 == *"stock"* && $item5stocked == 0 ]]; then
   tput setaf 2
   echo "$item5name 1000ct are in stock! $date"
   for name in ${contacts[@]}
   do
   echo "$item5name is in stock now at PowederVallyInc as of $date" | mutt -s "AmmoTracker" $name
   item5stocked=1
   done
 else
     echo "$item5name 1000ct are out of stock $date"
	 item5stocked=0

 fi
 echo "---------------------------------"
 item6name="Alliant Sport Pistol Smokeless Powder"
 echo "Checking $item6name @ PowderVallyInc"
 item6=$( curl -s https://www.powdervalleyinc.com/product/alliant-sport-pistol/ | grep 'class="stock in-stock"')
 if [[ $item6 == *"stock"* && $item6stocked == 0 ]]; then
   tput setaf 2
   echo "$item6name are in stock! $date"
   for name in ${contacts[@]}
   do
   echo "$item6name is in stock now at PowederVallyInc as of $date" | mutt -s "AmmoTracker" $name
   item6stocked=1
   done
 else
     echo "$item6name is out of stock $date"
	 item6stocked=0
 fi
 echo "---------------------------------"
 item7name="CCI Small Pistol Primers #500"
 echo "Checking $item7name @ Midway"
 item7=$( curl -s https://www.midwayusa.com/product/1301332027 | grep '<span ng-bind="selector.productAvailability">Available</span>')
 if [[ $item7 == *"Available"* && $item7stocked == 0 ]]; then
   tput setaf 2
   echo "$item7name are in stock! $date"
   for name in ${contacts[@]}
   do
   echo "$item7name is in stock now at Midway as of $date" | mutt -s "AmmoTracker" $name 
   item7stocked=1
   done
 else
     echo "$item7name is out of stock $date"
	 item7stocked=0
 fi
 echo "---------------------------------"
 item8name="Federal Premium Gold Medal Small Pistol Match Primers #100M"
 echo "Checking $item8name @ Midway"
 item8=$( curl -s https://www.midwayusa.com/product/953619121 | grep '<span ng-bind="selector.productAvailability">Available</span>')
 if [[ $item8 == *"Available"* && $item8stocked == 0 ]]; then
   tput setaf 2
   echo "$item8name are in stock! $date"
   for name in ${contacts[@]}
   do
   echo "$item8name is in stock now at Midway as of $date" | mutt -s "AmmoTracker" $name 
   item8stocked=1
   done
 else
     echo "$item8name is out of stock $date"
	 item8stocked=0
 fi
 echo "---------------------------------"
 item9name="Federal Small Pistol Primers #100"
 echo "Checking $item9name @ Midway"
 item9=$( curl -s https://www.midwayusa.com/product/953733657 | grep '<span ng-bind="selector.productAvailability">Available</span>')
 if [[ $item9 == *"Available"* && $item9stocked == 0 ]]; then
   tput setaf 2
   echo "$item9name are in stock! $date"
   for name in ${contacts[@]}
   do
   echo "$item9name is in stock now at Midway as of $date" | mutt -s "AmmoTracker" $name 
   item9stocked=1
   done
 else
     echo "$item9name is out of stock $date"
	 item9stocked=0
 fi
 echo "---------------------------------"
 item10name="Winchester Small Pistol Primers #1-1/2"
 echo "Checking $item10name @ Midway"
 item10=$( curl -s https://www.midwayusa.com/product/2900166619 | grep '<span ng-bind="selector.productAvailability">Available</span>')
 if [[ $item10 == *"Available"* && $item10stocked == 0 ]]; then
   tput setaf 2
   echo "$item10name are in stock! $date"
   for name in ${contacts[@]}
   do
   echo "$item10name is in stock now at Midway as of $date" | mutt -s "AmmoTracker" $name 
   item10stocked=1
   done
 else
     echo "$item10name is out of stock $date"
	 item10stocked=0
 fi
 echo "---------------------------------"
 item11name="CCI Standard Primers #500 Small Pistol"
 echo "Checking $item11name @ Natchez Shooters Supplies"
 item11=$( curl -s https://www.natchezss.com/cci-standard-primers-500-small-pistol.html | grep '<span>In stock</span>')
 if [[ $item11 == *"stock"* && $item11stocked == 0 ]]; then
   tput setaf 2
   echo "$item11name are in stock! $date"
   for name in ${contacts[@]}
   do
   echo "$item11name is in stock now at Natchez Shooters Supplies as of $date" | mutt -s "AmmoTracker" $name 
   item11stocked=1
   done
 else
     echo "$item11name is out of stock $date"
	 item11stocked=0
 fi
 echo "---------------------------------"
 item12name="Federal Premium Champion Centerfire Primers Small Pistol"
 echo "Checking $item12name @ Natchez Shooters Supplies"
 item12=$( curl -s https://www.natchezss.com/federal-premium-champion-centerfire-primers-small-pistol.html | grep '<span>In stock</span>')
 if [[ $item12 == *"stock"* && $item12stocked == 0 ]]; then
   tput setaf 2
   echo "$item12name are in stock! $date"
   for name in ${contacts[@]}
   do
   echo "$item12name is in stock now at Natchez Shooters Supplies as of $date" | mutt -s "AmmoTracker" $name 
   item12stocked=1
   done
 else
     echo "$item12name is out of stock $date"
	 item12stocked=0
 fi
 echo "---------------------------------"
 item13name="Fiocchi Primers- Small Pistol"
 echo "Checking $item13name @ Natchez Shooters Supplies"
 item13=$( curl -s https://www.natchezss.com/fiocchi-primers-small-pistol.html | grep '<span>In stock</span>')
 if [[ $item13 == *"stock"* && $item13stocked == 0 ]]; then
   tput setaf 2
   echo "$item13name are in stock! $date"
   for name in ${contacts[@]}
   do
   echo "$item13name is in stock now at Natchez Shooters Supplies as of $date" | mutt -s "AmmoTracker" $name 
   item13stocked=1
   done
 else
     echo "$item13name is out of stock $date"
	 item13stocked=0
 fi
 echo "---------------------------------"
 item14name="Federal Gold Medal Small Pistol Primer 1000/ct"
 echo "Checking $item14name @ Natchez Shooters Supplies"
 item14=$( curl -s https://www.natchezss.com/federal-gold-medal-small-pistol-primer-1000-ct.html | grep '<span>In stock</span>')
 if [[ $item14 == *"stock"* && $item14stocked == 0 ]]; then
   tput setaf 2
   echo "$item14name are in stock! $date"
   for name in ${contacts[@]}
   do
   echo "$item14name is in stock now at Natchez Shooters Supplies as of $date" | mutt -s "AmmoTracker" $name 
   item14stocked=1
   done
 else
     echo "$item14name is out of stock $date"
	 item14stocked=0
 fi
 echo "---------------------------------"
  item15name="Winchester Small Pistol Primers"
 echo "Checking $item15name @ Natchez Shooters Supplies"
 item15=$( curl -s https://www.natchezss.com/winchester-small-pistol-primers.html | grep '<span>In stock</span>')
 if [[ $item15 == *"stock"* && $item15stocked == 0 ]]; then
   tput setaf 2
   echo "$item15name are in stock! $date"
   for name in ${contacts[@]}
   do
   echo "$item15name is in stock now at Natchez Shooters Supplies as of $date" | mutt -s "AmmoTracker" $name 
   item15stocked=1
   done
 else
     echo "$item15name is out of stock $date"
	 item15stocked=0
 fi
echo "---------------------------------"
  item17name="Federal Small Pistol Primer #100 (1000 Count)"
 echo "Checking $item17name @ MidSouth Shooters"
 item17=$( curl -s 'https://www.midsouthshooterssupply.com/item/00129100/federal-small-pistol-primer-number-100-(1000-count)' | grep '>In Stock</span>')
 if [[ $item17 == *"stock"* && $item17stocked == 0 ]]; then
   tput setaf 2
   echo "$item17name are in stock! $date"
   for name in ${contacts[@]}
   do
   echo "$item17name is in stock now at MidSouth Shooters Supplies as of $date" | mutt -s "AmmoTracker" $name 
   item17stocked=1
   done
 else
     echo "$item17name is out of stock $date"
	 item17stocked=0
 fi
 echo "---------------------------------"
  item18name="Gold Medal Small Pistol Match Primer #GM100M (1000 Count)"
 echo "Checking $item18name @ MidSouth Shooters"
 item18=$( curl -s 'https://www.midsouthshooterssupply.com/item/00129gm100m/gold-medal-small-pistol-match-primer-number-gm100m-(1000-count)' | grep '>In Stock</span>')
 if [[ $item18 == *"stock"* && $item18stocked == 0 ]]; then
   tput setaf 2
   echo "$item18name are in stock! $date"
   for name in ${contacts[@]}
   do
   echo "$item18name is in stock now at MidSouth Shooters Supplies as of $date" | mutt -s "AmmoTracker" $name
   item18stocked=1
   done
 else
     echo "$item18name is out of stock $date"
	 item18stocked=0
 fi
 echo "---------------------------------"
  item19name="Gold Medal Magnum Small Pistol Match Primer #GM200M (1000 Count)"
 echo "Checking $item19name @ MidSouth Shooters"
 item19=$( curl -s 'https://www.midsouthshooterssupply.com/item/00129gm200m/gold-medal-magnum-small-pistol-match-primer-number-gm200m-(1000-count)' | grep '>In Stock</span>')
 if [[ $item19 == *"stock"* && $item19stocked == 0 ]]; then
   tput setaf 2
   echo "$item19name are in stock! $date"
   for name in ${contacts[@]}
   do
   echo "$item19name is in stock now at MidSouth Shooters Supplies as of $date" | mutt -s "AmmoTracker" $name 
   item19stocked=1
   done
 else
     echo "$item19name is out of stock $date"
	 item19stocked=0
 fi
 echo "---------------------------------"
  item20name="CCI #500 Small Pistol Primer 5000 Count Case"
 echo "Checking $item20name @ MidSouth Shooters"
 item20=$( curl -s 'https://www.midsouthshooterssupply.com/item/00350p0014c/-number-500-small-pistol-primer-5000-count-case' | grep '>In Stock</span>')
 if [[ $item20 == *"stock"* && $item20stocked == 0 ]]; then
   tput setaf 2
   echo "$item20name are in stock! $date"
   for name in ${contacts[@]}
   do
   echo "$item20name is in stock now at MidSouth Shooters Supplies as of $date" | mutt -s "AmmoTracker" $name 
   item20stocked=1
   done
 else
     echo "$item20name is out of stock $date"
	 item20stocked=0
 fi
 echo "---------------------------------"
  item21name="Federal Small Pistol Primer #100 (5000 Count Case)"
 echo "Checking $item21name @ MidSouth Shooters"
 item21=$( curl -s 'https://www.midsouthshooterssupply.com/item/00350p100c/federal-small-pistol-primer-number-100-(5000-count-case)' | grep '>In Stock</span>')
 if [[ $item21 == *"stock"* && $item21stocked == 0 ]]; then
   tput setaf 2
   echo "$item21name are in stock! $date"
   for name in ${contacts[@]}
   do
   echo "$item21name is in stock now at MidSouth Shooters Supplies as of $date" | mutt -s "AmmoTracker" $name 
   item21stocked=1
   done
 else
     echo "$item21name is out of stock $date"
	 item21stocked=0
 fi
 echo "---------------------------------"
  item22name="Gold Medal Small Pistol Match Primer #GM100M (5000 Count Case)"
 echo "Checking $item22name @ MidSouth Shooters"
 item22=$( curl -s 'https://www.midsouthshooterssupply.com/item/00350pgm100mc/gold-medal-small-pistol-match-primer-number-gm100m-(5000-count-case)' | grep '>In Stock</span>')
 if [[ $item22 == *"stock"* && $item22stocked == 0 ]]; then
   tput setaf 2
   echo "$item22name are in stock! $date"
   for name in ${contacts[@]}
   do
   echo "$item22name is in stock now at MidSouth Shooters Supplies as of $date" | mutt -s "AmmoTracker" $name 
   item22stocked=1
   done
 else
     echo "$item22name is out of stock $date"
	 item22stocked=0
 fi
 echo "---------------------------------"
  item23name="Gold Medal Magnum Small Pistol Match Primer #GM200M (5000 Count Case)"
 echo "Checking $item23name @ MidSouth Shooters"
 item23=$( curl -s 'https://www.midsouthshooterssupply.com/item/00350pgm200mc/gold-medal-magnum-small-pistol-match-primer-number-gm200m-(5000-count-case)' | grep '>In Stock</span>')
 if [[ $item23 == *"stock"* && $item23stocked == 0 ]]; then
   tput setaf 2
   echo "$item23name are in stock! $date"
   for name in ${contacts[@]}
   do
   echo "$item23name is in stock now at MidSouth Shooters Supplies as of $date" | mutt -s "AmmoTracker" $name 
   item23stocked=1
   done
 else
     echo "$item23name is out of stock $date"
	 item23stocked=0
 fi
  echo "---------------------------------"
  item24name="Winchester Small Pistol Primers 5000 Count Case"
 echo "Checking $item24name @ MidSouth Shooters"
 item24=$( curl -s 'https://www.midsouthshooterssupply.com/item/00350pwspc/winchester-small-pistol-primers-5000-count-case' | grep '>In Stock</span>')
 if [[ $item24 == *"stock"* && $item24stocked == 0 ]]; then
   tput setaf 2
   echo "$item24name are in stock! $date"
   for name in ${contacts[@]}
   do
   echo "$item24name is in stock now at MidSouth Shooters Supplies as of $date" | mutt -s "AmmoTracker" $name 
   item24stocked=1
   done
 else
     echo "$item24name is out of stock $date"
	 item24stocked=0
 fi
 echo "---------------------------------"
  item25name="Fiocchi Small Pistol Primers 12,000 Count Case (8 Boxes of 1500)"
 echo "Checking $item25name @ MidSouth Shooters"
 item25=$( curl -s 'https://www.midsouthshooterssupply.com/item/00350445smpcase/fiocchi-small-pistol-primers-12-and-000-count-case-(8-boxes-of-1500)' | grep '>In Stock</span>')
 if [[ $item25 == *"stock"* && $item25stocked == 0 ]]; then
   tput setaf 2
   echo "$item25name are in stock! $date"
   for name in ${contacts[@]}
   do
   echo "$item25name is in stock now at MidSouth Shooters Supplies as of $date" | mutt -s "AmmoTracker" $name 
   item25stocked=1
   done
 else
     echo "$item25name is out of stock $date"
	 item25stocked=0
 fi
 echo "---------------------------------"
  item26name="CCI PRIMER 500 SMALL PISTOL 1000/BOX"
 echo "Checking $item26name @ Graf & Sons"
 item26=$( curl -s https://www.grafs.com/retail/catalog/product/productId/2605 | grep 'Availability:' | grep 'In Stock')
 if [[ $item26 == *"stock"* && $item26stocked == 0 ]]; then
   tput setaf 2
   echo "$item26name are in stock! $date"
   for name in ${contacts[@]}
   do
   echo "$item26name is in stock now at Graf & Sons as of $date" | mutt -s "AmmoTracker" $name 
   item26stocked=1
   done
 else
     echo "$item26name is out of stock $date"
	 item26stocked=0
 fi
 echo "---------------------------------"
  item27name="FEDERAL PRIMER SMALL PISTOL 1000/BOX"
 echo "Checking $item27name @ Graf & Sons"
 item27=$( curl -s https://www.grafs.com/retail/catalog/product/productId/21351 | grep 'Availability:' | grep 'In Stock')
 if [[ $item27 == *"stock"* && $item27stocked == 0 ]]; then
   tput setaf 2
   echo "$item27name are in stock! $date"
   for name in ${contacts[@]}
   do
   echo "$item27name is in stock now at Graf & Sons as of $date" | mutt -s "AmmoTracker" $name 
   item27stocked=1
   done
 else
     echo "$item27name is out of stock $date"
	 item27stocked=0
 fi
 echo "---------------------------------"
  item28name="FEDERAL PRIMER SMALL PISTOL MAGNUM MATCH 1000/BOX
"
 echo "Checking $item28name @ Graf & Sons"
 item28=$( curl -s https://www.grafs.com/retail/catalog/product/productId/21362 | grep 'Availability:' | grep 'In Stock')
 if [[ $item28 == *"stock"* && $item28stocked == 0 ]]; then
   tput setaf 2
   echo "$item28name are in stock! $date"
   for name in ${contacts[@]}
   do
   echo "$item28name is in stock now at Graf & Sons as of $date" | mutt -s "AmmoTracker" $name 
   item28stocked=1
   done
 else
     echo "$item28name is out of stock $date"
	 item28stocked=0
 fi
 echo "---------------------------------"
  item29name="FEDERAL PRIMER SMALL PISTOL MATCH 1000/BOX"
 echo "Checking $item29name @ Graf & Sons"
 item29=$( curl -s https://www.grafs.com/retail/catalog/product/productId/21359 | grep 'Availability:' | grep 'In Stock')
 if [[ $item29 == *"stock"* && $item29stocked == 0 ]]; then
   tput setaf 2
   echo "$item29name are in stock! $date"
   for name in ${contacts[@]}
   do
   echo "$item29name is in stock now at Graf & Sons as of $date" | mutt -s "AmmoTracker" $name 
   item29stocked=1
   done
 else
     echo "$item29name is out of stock $date"
	 item29stocked=0
 fi
 echo "---------------------------------"
  item30name="WINCHESTER PRIMER SMALL PISTOL 1000/BOX"
 echo "Checking $item30name @ Graf & Sons"
 item30=$( curl -s https://www.grafs.com/retail/catalog/product/productId/21632| grep 'Availability:' | grep 'In Stock')
 if [[ $item30 == *"stock"* && $item30stocked == 0 ]]; then
   tput setaf 2
   echo "$item30name is in stock! $date"
   for name in ${contacts[@]}
   do
   echo "$item30name is in stock now at Graf & Sons as of $date" | mutt -s "AmmoTracker" $name 
   item30stocked=1
   done
 else
     echo "$item27name is out of stock $date"
	 item30stocked=0
 fi
 echo "---------------------------------"
  item31name="FEDERAL - PISTOL PRIMERS"
 echo "Checking $item31name @ Brownwells"
 item31=$( curl -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_1) AppleWebKit/537.36 (K HTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36" https://www.brownells.com/reloading/primers/pistol-primers/pistol-primers-prod35322.aspx | grep -i -A 1 '<span id="ctl00_ContentPlaceHolderColMain_ucSKUList_rptSkuList_ctl01_mfr" class="mfr" itemprop="availability">')
 if [[ $item31 == *"In Stock"* && $item31stocked == 0 ]]; then
   tput setaf 2
   echo "$item31name are in stock! $date"
   for name in ${contacts[@]}
   do
   echo "$item31name is in stock now at Brownwells as of $date" | mutt -s "AmmoTracker" $name 
   item31stocked=1
   done
 else
     echo "$item31name is out of stock $date"
	 item31stocked=0
 fi
  echo "---------------------------------"
  item16name="FEDERAL - PREMIUM GOLD MEDAL PISTOL PRIMERS"
 echo "Checking $item16name @ Brownwells"
 item16=$( curl -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_1) AppleWebKit/537.36 (K HTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36" https://www.brownells.com/reloading/primers/pistol-primers/premium-gold-medal-pistol-primers-prod79084.aspx | grep -i -A 1 '<span id="ctl00_ContentPlaceHolderColMain_ucSKUList_rptSkuList_ctl01_mfr" class="mfr" itemprop="availability">')
 if [[ $item16 == *"In Stock"* && $item16stocked == 0 ]]; then
   tput setaf 2
   echo "$item16name are in stock! $date"
   for name in ${contacts[@]}
   do
   echo "$item16name is in stock now at Brownwells as of $date" | mutt -s "AmmoTracker" $name 
   item16stocked=1
   done
 else
     echo "$item16name is out of stock $date"
	 item16stocked=0
 fi
   echo "---------------------------------"
  item32name="CCI - PISTOL PRIMERS"
 echo "Checking $item32name @ Brownwells"
 item32=$( curl -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_1) AppleWebKit/537.36 (K HTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36" https://www.brownells.com/reloading/primers/pistol-primers/pistol-primers-prod79081.aspx | grep -i -A 1 '<span id="ctl00_ContentPlaceHolderColMain_ucSKUList_rptSkuList_ctl01_mfr" class="mfr" itemprop="availability">')
 if [[ $item32 == *"In Stock"* && $item32stocked == 0 ]]; then
   tput setaf 2
   echo "$item32name are in stock! $date"
   for name in ${contacts[@]}
   do
   echo "$item32name is in stock now at Brownwells as of $date" | mutt -s "AmmoTracker" $name 
   item32stocked=1
   done
 else
     echo "$item32name is out of stock $date"
	 item32stocked=0
 fi
   echo "---------------------------------"
  item33name="WINCHESTER - PISTOL PRIMERS"
 echo "Checking $item33name @ Brownwells"
 item33=$( curl -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_1) AppleWebKit/537.36 (K HTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36" https://www.brownells.com/reloading/primers/pistol-primers/pistol-primers-prod55055.aspx | grep -i -A 1 '<span id="ctl00_ContentPlaceHolderColMain_ucSKUList_rptSkuList_ctl01_mfr" class="mfr" itemprop="availability">')
 if [[ $item33 == *"In Stock"* && $item33stocked == 0 ]]; then
   tput setaf 2
   echo "$item33name are in stock! $date"
   for name in ${contacts[@]}
   do
   echo "$item33name is in stock now at Brownwells as of $date" | mutt -s "AmmoTracker" $name 
   item33stocked=1
   done
 else
     echo "$item33name is out of stock $date"
	 item33stocked=0
 fi
   echo "---------------------------------"
  item34name="WINCHESTER - PISTOL MATCH PRIMER"
 echo "Checking $item34name @ Brownwells"
 item34=$( curl -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_1) AppleWebKit/537.36 (K HTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36" https://www.brownells.com/reloading/primers/pistol-primers/pistol-match-primer-prod133186.aspx | grep -i -A 1 '<span id="ctl00_ContentPlaceHolderColMain_ucSKUList_rptSkuList_ctl01_mfr" class="mfr" itemprop="availability">')
 if [[ $item34 == *"In Stock"* && $item34stocked == 0 ]]; then
   tput setaf 2
   echo "$item34name are in stock! $date"
   for name in ${contacts[@]}
   do
   echo "$item34name is in stock now at Brownwells as of $date" | mutt -s "AmmoTracker" $name 
   item34stocked=1
   done
 else
     echo "$item34name is out of stock $date"
	 item34stocked=0
 fi
 echo "---------------------------------"
  item35name="WSP WIN SMALL PISTOL SP PRIMERS"
 echo "Checking $item35name @ Recob’s Target Shop"
 item35=$( curl -s https://recobstargetshop.com/product/wsp-win-small-pistol-sp-primers/ | grep 'In stock</p>')
 if [[ $item35 == *"In Stock"* && $item35stocked == 0 ]]; then
   tput setaf 2
   echo "$item35name are in stock! $date"
   for name in ${contacts[@]}
   do
   echo "$item35name is in stock now at Recob’s Target Shop as of $date" | mutt -s "AmmoTracker" $name 
   item35stocked=1
   done
 else
     echo "$item35name is out of stock $date"
	 item35stocked=0
 fi
 echo "---------------------------------"
  item36name="FED 200 SMALL PISTOL MAG PRIMERS"
 echo "Checking $item36name @ Recob’s Target Shop"
 item36=$( curl -s https://recobstargetshop.com/product/fed-200-small-pistol-mag-primers/ | grep 'In stock</p>')
 if [[ $item36 == *"In Stock"* && $item36stocked == 0 ]]; then
   tput setaf 2
   echo "$item36name are in stock! $date"
   for name in ${contacts[@]}
   do
   echo "$item36name is in stock now at Recob’s Target Shop as of $date" | mutt -s "AmmoTracker" $name 
   item36stocked=1
   done
 else
     echo "$item36name is out of stock $date"
	 item36stocked=0
 fi
 echo "---------------------------------"
  item37name="FED GM200M MATCH SMALL PISTOL MAGNUM PRIMER"
 echo "Checking $item37name @ Recob’s Target Shop"
 item37=$( curl -s https://recobstargetshop.com/product/fed-gm200m-match-small-pistol-magnum-primer/ | grep 'In stock</p>')
 if [[ $item37 == *"In Stock"* && $item37stocked == 0 ]]; then
   tput setaf 2
   echo "$item37name are in stock! $date"
   for name in ${contacts[@]}
   do
   echo "$item37name is in stock now at Recob’s Target Shop as of $date" | mutt -s "AmmoTracker" $name 
   item37stocked=1
   done
 else
     echo "$item37name is out of stock $date"
	 item37stocked=0
 fi
  echo "---------------------------------"
  item38name="SPORT PISTOL 1# ALLIANT SMOKELESS POWDER"
 echo "Checking $item38name @ Recob’s Target Shop"
 item38=$( curl -s https://recobstargetshop.com/product/sport-pistol-1-alliant-smokeless-powder/ | grep 'In stock</p>')
 if [[ $item38 == *"In Stock"* && $item38stocked == 0 ]]; then
   tput setaf 2
   echo "$item38name are in stock! $date"
   for name in ${contacts[@]}
   do
   echo "$item38name is in stock now at Recob’s Target Shop as of $date" | mutt -s "AmmoTracker" $name 
   item38stocked=1
   done
 else
     echo "$item38name is out of stock $date"
	 item38stocked=0
 fi
 echo "---------------------------------"
 tput setaf 7
 echo ""
 echo "Script complete"
 echo "waiting 1min"
 sleep 60
done
