abstract class IssueInvoice {
  String issueInvoiceNote();
  String hookMethod1() =>
      'AbstractClass says: I am doing the bulk of the work hook';

  void templateMethod() {
    print('AbstractClass says: I am doing the bulk of the work');
    print(issueInvoiceNote());
    print(hookMethod1());
  }
}

class IssueInvoice1 extends IssueInvoice {
  String issueInvoiceNote() =>
      'ConcreteClass says: Implemented Operation issueInvoiceNote with credit card';
}

class IssueInvoice2 extends IssueInvoice {
  String issueInvoiceNote() =>
      'ConcreteOverride says: Implemented Operation issueInvoiceNote with cash';

  @override
  String hookMethod1() => 'ConcreteOverride says: Overridden Hook1';
}

void main() {
  final issueInvoice1 = IssueInvoice1();
  issueInvoice1.templateMethod();

  final issueInvoice2 = IssueInvoice2();

  issueInvoice2.templateMethod();
}
