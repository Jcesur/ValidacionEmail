Use Windows.pkg
Use DFClient.pkg
Use Validacion.pkg

Deferred_View Activate_oValidacionEmail for ;
Object oValidacionEmail is a dbView

    Set Border_Style to Border_Thick
    Set Size to 200 300
    Set Location to 2 2
    Set Label to "ValidacionEmail"
   
    Object oForm1 is a Form
       Set Size to 12 100
       Set Location to 66 37
       Set psPlaceHolder to "Introduce tu email"
       
    End_Object
    
    Object oButton1 is a Button
        Set Location to 66 171
        Set Label to 'Validar'
    
        Procedure OnClick
            String sValue
            Boolean bRet
            Get Value of oForm1 to sValue
            Get ValidacionEmail sValue to bRet
            
             If (bRet) Begin
                Set Label of oTextBox1 to ("Email: "+sValue)
                Set Color of oTextBox1 to (RGB( 58, 255, 51))
            End
            Else Begin
                Set Label of oTextBox1 to ("Email: "+sValue)
                Set Color of oTextBox1 to (RGB( 255, 62, 48))
            End
        End_Procedure
    
    End_Object
    
    Object oTextBox1 is a TextBox
        Set Size to 9 34
        Set Location to 90 39
        Set Label to 'Email:'
    End_Object
    
Cd_End_Object
