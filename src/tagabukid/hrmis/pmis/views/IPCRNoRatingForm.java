/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package tagabukid.hrmis.pmis.views;

import com.rameses.rcp.ui.annotations.StyleSheet;
import com.rameses.rcp.ui.annotations.Template;
import com.rameses.seti2.views.CrudFormPage;

/**
 *
 * @author User
 */
@StyleSheet
@Template(CrudFormPage.class)
public class IPCRNoRatingForm extends javax.swing.JPanel {

    /**
     * Creates new form TransactionForm
     */
    public IPCRNoRatingForm() {
        initComponents();
    }

    /**
     * This method is called from within the constructor to initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is always
     * regenerated by the Form Editor.
     */
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        xDataTable1 = new com.rameses.rcp.control.XDataTable();
        xDataTable2 = new com.rameses.rcp.control.XDataTable();
        xDataTable3 = new com.rameses.rcp.control.XDataTable();
        xHorizontalPanel1 = new com.rameses.rcp.control.XHorizontalPanel();
        xFormPanel1 = new com.rameses.rcp.control.XFormPanel();
        xLabel1 = new com.rameses.rcp.control.XLabel();
        xLookupField1 = new com.rameses.rcp.control.XLookupField();
        xLookupField2 = new com.rameses.rcp.control.XLookupField();
        xLookupField3 = new com.rameses.rcp.control.XLookupField();
        xComboBox1 = new com.rameses.rcp.control.XComboBox();
        xFormPanel2 = new com.rameses.rcp.control.XFormPanel();
        xLabel7 = new com.rameses.rcp.control.XLabel();
        xLabel4 = new com.rameses.rcp.control.XLabel();
        jScrollPane2 = new javax.swing.JScrollPane();
        xTextArea2 = new com.rameses.rcp.control.XTextArea();

        com.rameses.rcp.control.border.XTitledBorder xTitledBorder1 = new com.rameses.rcp.control.border.XTitledBorder();
        xTitledBorder1.setTitle("Employee Inforamtion");
        xDataTable1.setBorder(xTitledBorder1);
        xDataTable1.setColumns(new com.rameses.rcp.common.Column[]{
            new com.rameses.rcp.common.Column(new Object[]{
                new Object[]{"name", "lastname"}
                , new Object[]{"caption", "Last Name"}
                , new Object[]{"width", 100}
                , new Object[]{"minWidth", 0}
                , new Object[]{"maxWidth", 0}
                , new Object[]{"required", false}
                , new Object[]{"resizable", true}
                , new Object[]{"nullWhenEmpty", true}
                , new Object[]{"editable", true}
                , new Object[]{"editableWhen", null}
                , new Object[]{"textCase", com.rameses.rcp.constant.TextCase.NONE}
                , new Object[]{"typeHandler", new com.rameses.rcp.common.LookupColumnHandler("#{item.lastname}", "lookupEmployee")}
            }),
            new com.rameses.rcp.common.Column(new Object[]{
                new Object[]{"name", "firstname"}
                , new Object[]{"caption", "First Name"}
                , new Object[]{"width", 100}
                , new Object[]{"minWidth", 0}
                , new Object[]{"maxWidth", 0}
                , new Object[]{"required", false}
                , new Object[]{"resizable", true}
                , new Object[]{"nullWhenEmpty", true}
                , new Object[]{"editable", false}
                , new Object[]{"textCase", com.rameses.rcp.constant.TextCase.NONE}
                , new Object[]{"typeHandler", new com.rameses.rcp.common.TextColumnHandler()}
            }),
            new com.rameses.rcp.common.Column(new Object[]{
                new Object[]{"name", "lastname"}
                , new Object[]{"caption", "Last Name"}
                , new Object[]{"width", 100}
                , new Object[]{"minWidth", 0}
                , new Object[]{"maxWidth", 0}
                , new Object[]{"required", false}
                , new Object[]{"resizable", true}
                , new Object[]{"nullWhenEmpty", true}
                , new Object[]{"editable", false}
                , new Object[]{"textCase", com.rameses.rcp.constant.TextCase.NONE}
                , new Object[]{"typeHandler", new com.rameses.rcp.common.TextColumnHandler()}
            }),
            new com.rameses.rcp.common.Column(new Object[]{
                new Object[]{"name", "officeappointment"}
                , new Object[]{"caption", "Office Appointment"}
                , new Object[]{"width", 100}
                , new Object[]{"minWidth", 0}
                , new Object[]{"maxWidth", 0}
                , new Object[]{"required", false}
                , new Object[]{"resizable", true}
                , new Object[]{"nullWhenEmpty", true}
                , new Object[]{"editable", false}
                , new Object[]{"textCase", com.rameses.rcp.constant.TextCase.NONE}
                , new Object[]{"typeHandler", new com.rameses.rcp.common.TextColumnHandler()}
            }),
            new com.rameses.rcp.common.Column(new Object[]{
                new Object[]{"name", "officeassigned"}
                , new Object[]{"caption", "Office Assigned"}
                , new Object[]{"width", 100}
                , new Object[]{"minWidth", 0}
                , new Object[]{"maxWidth", 0}
                , new Object[]{"required", true}
                , new Object[]{"resizable", true}
                , new Object[]{"nullWhenEmpty", true}
                , new Object[]{"editable", true}
                , new Object[]{"editableWhen", null}
                , new Object[]{"textCase", com.rameses.rcp.constant.TextCase.NONE}
                , new Object[]{"typeHandler", new com.rameses.rcp.common.LookupColumnHandler("#{item.officeassigned.Entity.Name}", "lookupOfficeAssigned")}
            })
        });
        xDataTable1.setEditable(true);
        xDataTable1.setHandler("employeeListHandler");
        xDataTable1.setName("selectedEmployee"); // NOI18N

        com.rameses.rcp.control.border.XTitledBorder xTitledBorder2 = new com.rameses.rcp.control.border.XTitledBorder();
        xTitledBorder2.setTitle("DPCR");
        xDataTable2.setBorder(xTitledBorder2);
        xDataTable2.setColumns(new com.rameses.rcp.common.Column[]{
            new com.rameses.rcp.common.Column(new Object[]{
                new Object[]{"name", "successindicator"}
                , new Object[]{"caption", "Success Indicator"}
                , new Object[]{"width", 100}
                , new Object[]{"minWidth", 0}
                , new Object[]{"maxWidth", 0}
                , new Object[]{"required", false}
                , new Object[]{"resizable", true}
                , new Object[]{"nullWhenEmpty", true}
                , new Object[]{"editable", false}
                , new Object[]{"textCase", com.rameses.rcp.constant.TextCase.NONE}
                , new Object[]{"typeHandler", new com.rameses.rcp.common.TextColumnHandler()}
            })
        });
        xDataTable2.setDepends(new String[] {"selectedEmployee"});
        xDataTable2.setDynamic(true);
        xDataTable2.setHandler("dpcrListHandler");
        xDataTable2.setName("selectedDPCR"); // NOI18N

        com.rameses.rcp.control.border.XTitledBorder xTitledBorder3 = new com.rameses.rcp.control.border.XTitledBorder();
        xTitledBorder3.setTitle("Success Indicator");
        xDataTable3.setBorder(xTitledBorder3);
        xDataTable3.setColumns(new com.rameses.rcp.common.Column[]{
            new com.rameses.rcp.common.Column(new Object[]{
                new Object[]{"name", "successindicator"}
                , new Object[]{"caption", "Success Indicator"}
                , new Object[]{"width", 100}
                , new Object[]{"minWidth", 0}
                , new Object[]{"maxWidth", 0}
                , new Object[]{"required", false}
                , new Object[]{"resizable", true}
                , new Object[]{"nullWhenEmpty", true}
                , new Object[]{"editable", true}
                , new Object[]{"editableWhen", null}
                , new Object[]{"textCase", com.rameses.rcp.constant.TextCase.NONE}
                , new Object[]{"typeHandler", new com.rameses.rcp.common.LookupColumnHandler("#{item.title}", "lookupIPCRSuccessIndicator")}
            }),
            new com.rameses.rcp.common.Column(new Object[]{
                new Object[]{"name", "remarks"}
                , new Object[]{"caption", "Remarks"}
                , new Object[]{"width", 100}
                , new Object[]{"minWidth", 0}
                , new Object[]{"maxWidth", 0}
                , new Object[]{"required", false}
                , new Object[]{"resizable", true}
                , new Object[]{"nullWhenEmpty", true}
                , new Object[]{"editable", true}
                , new Object[]{"editableWhen", null}
                , new Object[]{"textCase", com.rameses.rcp.constant.TextCase.NONE}
                , new Object[]{"typeHandler", new com.rameses.rcp.common.TextColumnHandler()}
            })
        });
        xDataTable3.setDepends(new String[] {"selectedDPCR"});
        xDataTable3.setDynamic(true);
        xDataTable3.setHandler("ipcrListHandler");
        xDataTable3.setName("selectedIPCR"); // NOI18N

        com.rameses.rcp.control.border.XTitledBorder xTitledBorder4 = new com.rameses.rcp.control.border.XTitledBorder();
        xTitledBorder4.setTitle("IPCR Information");
        xHorizontalPanel1.setBorder(xTitledBorder4);
        xHorizontalPanel1.setBorderSeparator(javax.swing.BorderFactory.createEmptyBorder(0, 0, 0, 0));
        xHorizontalPanel1.setPreferredSize(new java.awt.Dimension(1008, 165));

        xFormPanel1.setCaptionWidth(130);
        xFormPanel1.setName(""); // NOI18N
        xFormPanel1.setPreferredSize(new java.awt.Dimension(500, 100));

        xLabel1.setBorder(new com.rameses.rcp.control.border.XLineBorder());
        xLabel1.setCaption("IPCR No.");
        xLabel1.setOpaque(true);
        xLabel1.setPreferredSize(new java.awt.Dimension(0, 16));
        xLabel1.setText("#{entity.ipcrno}");
        xFormPanel1.add(xLabel1);

        xLookupField1.setCaption("Reviewer");
        xLookupField1.setHandler("lookupReviewer");
        xLookupField1.setName("entity.reviewer"); // NOI18N
        xLookupField1.setPreferredSize(new java.awt.Dimension(0, 20));
        xLookupField1.setRequired(true);
        xFormPanel1.add(xLookupField1);

        xLookupField2.setCaption("Immediate Supervisor");
        xLookupField2.setHandler("lookupSupervisor");
        xLookupField2.setName("entity.supervisior"); // NOI18N
        xLookupField2.setPreferredSize(new java.awt.Dimension(0, 20));
        xLookupField2.setRequired(true);
        xFormPanel1.add(xLookupField2);

        xLookupField3.setCaption("Approver");
        xLookupField3.setHandler("lookupApprover");
        xLookupField3.setName("entity.approver"); // NOI18N
        xLookupField3.setPreferredSize(new java.awt.Dimension(0, 20));
        xLookupField3.setRequired(true);
        xFormPanel1.add(xLookupField3);

        xComboBox1.setCaption("Period");
        xComboBox1.setItems("period");
        xComboBox1.setName("entity.period"); // NOI18N
        xComboBox1.setRequired(true);
        xFormPanel1.add(xComboBox1);

        xHorizontalPanel1.add(xFormPanel1);

        xFormPanel2.setCaptionWidth(100);
        xFormPanel2.setPreferredSize(new java.awt.Dimension(500, 100));

        xLabel7.setBorder(new com.rameses.rcp.control.border.XLineBorder());
        xLabel7.setCaption("Created By");
        xLabel7.setExpression("#{entity.recordlog.createdbyuser}");
        xLabel7.setFor("");
        xLabel7.setName(""); // NOI18N
        xLabel7.setOpaque(true);
        xLabel7.setPreferredSize(new java.awt.Dimension(0, 16));
        xFormPanel2.add(xLabel7);

        xLabel4.setBorder(new com.rameses.rcp.control.border.XLineBorder());
        xLabel4.setCaption("Date Created");
        xLabel4.setExpression("#{entity.recordlog.datecreated}");
        xLabel4.setFor("");
        xLabel4.setOpaque(true);
        xLabel4.setPreferredSize(new java.awt.Dimension(0, 16));
        xFormPanel2.add(xLabel4);

        jScrollPane2.setBorder(new com.rameses.rcp.control.border.XLineBorder());
        jScrollPane2.setPreferredSize(new java.awt.Dimension(0, 40));

        xTextArea2.setEditable(false);
        xTextArea2.setBackground(new java.awt.Color(240, 240, 240));
        xTextArea2.setCaption("");
        xTextArea2.setFont(new java.awt.Font("Tahoma", 1, 18)); // NOI18N
        xTextArea2.setForeground(new java.awt.Color(204, 0, 0));
        xTextArea2.setItemExpression("");
        xTextArea2.setName("entity.statemessage"); // NOI18N
        jScrollPane2.setViewportView(xTextArea2);

        xFormPanel2.add(jScrollPane2);

        xHorizontalPanel1.add(xFormPanel2);

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(this);
        this.setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addContainerGap()
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(xDataTable3, javax.swing.GroupLayout.Alignment.TRAILING, javax.swing.GroupLayout.DEFAULT_SIZE, 1028, Short.MAX_VALUE)
                    .addComponent(xDataTable2, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                    .addComponent(xDataTable1, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                    .addComponent(xHorizontalPanel1, javax.swing.GroupLayout.Alignment.TRAILING, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
                .addContainerGap())
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, layout.createSequentialGroup()
                .addContainerGap()
                .addComponent(xHorizontalPanel1, javax.swing.GroupLayout.PREFERRED_SIZE, 138, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(xDataTable1, javax.swing.GroupLayout.PREFERRED_SIZE, 133, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(xDataTable2, javax.swing.GroupLayout.PREFERRED_SIZE, 130, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(xDataTable3, javax.swing.GroupLayout.DEFAULT_SIZE, 177, Short.MAX_VALUE)
                .addContainerGap())
        );
    }// </editor-fold>//GEN-END:initComponents


    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JScrollPane jScrollPane2;
    private com.rameses.rcp.control.XComboBox xComboBox1;
    private com.rameses.rcp.control.XDataTable xDataTable1;
    private com.rameses.rcp.control.XDataTable xDataTable2;
    private com.rameses.rcp.control.XDataTable xDataTable3;
    private com.rameses.rcp.control.XFormPanel xFormPanel1;
    private com.rameses.rcp.control.XFormPanel xFormPanel2;
    private com.rameses.rcp.control.XHorizontalPanel xHorizontalPanel1;
    private com.rameses.rcp.control.XLabel xLabel1;
    private com.rameses.rcp.control.XLabel xLabel4;
    private com.rameses.rcp.control.XLabel xLabel7;
    private com.rameses.rcp.control.XLookupField xLookupField1;
    private com.rameses.rcp.control.XLookupField xLookupField2;
    private com.rameses.rcp.control.XLookupField xLookupField3;
    private com.rameses.rcp.control.XTextArea xTextArea2;
    // End of variables declaration//GEN-END:variables
}
