// Question 3: Classes & Objects (Difficulty: 3/5) ⭐⭐⭐
// EXPECTED OUTPUT:
// Account: 12345, Holder: Alice, Type: Savings, Balance: 800.0
// Account: 67890, Holder: Bob, Type: Checking, Balance: 400.0
// Account: 11111, Holder: Charlie, Type: Savings, Balance: 2000.0
// Insufficient funds for withdrawal of 1000.0 from account 67890

// ignore_for_file: prefer_int_literals, cascade_invocations

// Create a BankAccount class with the following specifications:
class BankAccount {
  // Savings/Checking
  // 2. Constructor:
  //    - Initialize all properties
  //    - Set initial balance to 0.0
  // TO-DO: Implement the constructor
  BankAccount(this.accountNumber, this.accountHolder, this.accountType)
      : balance = 0.0;
  // 1. Properties:
  String accountNumber;
  String accountHolder;
  double balance;
  String accountType;

  // 3. Methods:
  //    - deposit(double amount): Add money to account
  // TO-DO: Implement the deposit method
  void deposit(double amount) {
    // TO-DO: Add the amount to balance
    balance = balance + amount;
  }

  //    - withdraw(double amount): Remove money from account (check for sufficient funds)
  // TO-DO: Implement the withdraw method
  void withdraw(double amount) {
    // TO-DO: Check for sufficient funds and subtract amount
    // TO-DO: Print error message if insufficient funds
    // Expected error format: "Insufficient funds for withdrawal of <amount> from account <accountNumber>"
    if (amount < balance) {
      balance = balance - amount;
    } else {
      print(
        'Insufficiant funds for withdrawl of $amount from account $accountNumber',
      );
    }
  }

  //    - getBalance(): Return current balance
  // TO-DO: Implement the getBalance method
  // ignore: prefer_expression_function_bodies
  double getBalance() {
    // TO-DO: Return the current balance
    return balance;
  }

  //    - displayAccountInfo(): Show account details
  // TO-DO: Implement the displayAccountInfo method
  void displayAccountInfo() {
    // TO-DO: Display account information
    // Expected format: "Account: <number>, Holder: <name>, Type: <type>, Balance: <balance>"
    print(
      'Account:$accountNumber,Holder:$accountHolder,Type:$accountType,Balance:$balance',
    );
  }
}

void main() {
  // 4. Create 3 bank accounts and demonstrate:
  //    - Depositing money
  //    - Withdrawing money
  //    - Displaying account information
  //    - Handling insufficient funds scenario

  // TO-DO: Create 3 bank accounts:
  // 1. Account: 12345, Holder: Alice, Type: Savings
  // 2. Account: 67890, Holder: Bob, Type: Checking
  // 3. Account: 11111, Holder: Charlie, Type: Savings
  final account1 = BankAccount('12345','Alice','Savings');
  final account2 = BankAccount('67890','Bob','Checking');
  final account3 = BankAccount('11111','Charlie','Savings');
  account1.deposit(1000.0);
  account1.withdraw(200.0);
  account1.displayAccountInfo();
  account2.deposit(500.0);
  account2.withdraw(100.0);
  account2.displayAccountInfo();
  account3.deposit(2000.0);
  account3.displayAccountInfo();
  account2.withdraw(1000.0);

  // TO-DO: Demonstrate depositing money:
  // Account 1: 1000.0, Account 2: 500.0, Account 3: 2000.0

  // TO-DO: Demonstrate withdrawing money:
  // Account 1: 200.0, Account 2: 100.0

  // TO-DO: Display account information for all accounts

  // TO-DO: Demonstrate insufficient funds scenario:
  // Withdraw 1000.0 from Account 2
}
