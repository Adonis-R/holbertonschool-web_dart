void main(List<String> arguments) {
  int nb = int.parse(arguments[0]);
  if (nb > 0) {
    print('$nb is positive');
  } else if (nb < 0) {
    print('$nb is negative');
  } else {
    print('$nb is zero');
  }
}