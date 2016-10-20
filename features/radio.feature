Feature: Import and Export Radio Groups

    Scenario: Importing and exporting a field group with a radio field
      Given a WP install
      When I run the wp-cli command to import the file "radio-group.json"
      Then the import result code should be 0
      And the import result should not be empty
      And the import result string should start with "Success:"

      When I run the wp-cli command to export custom field "radio-group"
      Then the export result code should be 0
      And the export result should not be empty
      And the export result string should start with "Success:"
      And the exported file should match the original import file
