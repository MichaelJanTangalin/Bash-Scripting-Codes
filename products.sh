#! /bin/bash
# Bash Conditions Activity
# Created By: Michael Jan R. Tangalin

read -p 'Enter Product 1: ' p1
read -p 'Enter Product Price: $' p1p

echo 

read -p 'Enter Product 2: ' p2
read -p 'Enter Product Price: $' p2p

echo 

read -p 'Enter Product 3: ' p3
read -p 'Enter Product Price: $' p3p

echo
echo
echo "Input Mode of Payment Terms"
echo

xM=3
yM=6
zM=12

read -p 'Cash Discount: ' cD1
echo "      You Input $cD1% for Cash Discount"

read -p "$xM Months Installment: "  cD2
echo "      You Input $cD2% for $xM Months Installment"

read -p "$yM Months Installment: "  cD3
echo "      You Input $cD3% for $yM Months Installment"

read -p "$zM Months Installment: "  cD4
echo "      You Input $cD4% for $zM Months Installment"

echo
echo "Main Menu"
echo "Press I: $p1              $"$p1p 
echo "Press S: $p2              $"$p2p 
echo "Press X: $p3          $"$p3p 
echo
read -p 'Enter Item: ' cP
case $cP in

    "I")
     echo "Your Item is $p1"
     echo "Price: $"$p1p 
    ;;

    "S")
     echo "Your Item is $p2"
     echo "Price: $"$p2p 
    ;;

    "X")
     echo "Your Item is $p3"
     echo "Price: $"$p3p 
    ;;

    *)
     echo "Invalid Choice!"
     exit
    ;;
esac

echo
echo

echo "Select Mode of Payment"
echo "Press 1: Cash                      $cD1% Discount" 
echo "Press 2: $xM Months Installment      $cD2% Interest"
echo "Press 3: $yM Months Installment      $cD3% Interest"   
echo "Press 4: $zM Months Installment     $cD4% Interest"
echo 
read -p 'Enter Mode of Payment:             ' mP


if [ "$cP" == "I" ];
then
    item=$p1
    price=$p1p
elif [ "$cP" == "S" ]; 
then
    item=$p2
    price=$p2p
elif [ "$cP" == "X" ]; 
then
    item=$p3
    price=$p3p
else
    echo "Choice not found!"
    exit
fi

case $mP in

    1)
     mode="Cash"
     CalcDISC=$(( $price*$cD1/100 )) 
     total=$(( $price-$CalcDISC )) 
     monthly=0
    ;;

    2)
     mode="$xM Months Installment"
     CalcDISC=$(( $price*$cD2/100 ))
     total=$(( $price+$CalcDISC ))
     monthly=$(( $total/$xM ))
    ;;

    3)
     mode="$yM Months Installment"
     CalcDISC=$(( $price*$cD3/100 )) 
     total=$(( $price+$CalcDISC )) 
     monthly=$(( $total/$yM )) 
    ;;
    
    4)
     mode="$zM Months Installment"
     CalcDISC=$(( $price*$cD4/100 )) 
     total=$(( $price+$CalcDISC )) 
     monthly=$(( $total/$zM )) 
    ;;

    *)
     echo "Invalid Choice!"
     exit
    ;;
esac

#RESULTS

echo "Mode of Payment:                   "$mode 
echo "Item:                              "$item
echo "Price:                             $"$price
echo "Discount/Interest:                 $"$CalcDISC
echo "Total Amount:                      $"$total
echo "Monthly:                           $"$monthly
