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
public class CaptureIPCRPage extends javax.swing.JPanel {

    /**
     * Creates new form TransactionForm
     */
    public CaptureIPCRPage() {
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

        xHorizontalPanel1 = new com.rameses.rcp.control.XHorizontalPanel();
        xFormPanel1 = new com.rameses.rcp.control.XFormPanel();
        xLabel1 = new com.rameses.rcp.control.XLabel();
        xLookupField1 = new com.rameses.rcp.control.XLookupField();
        xLookupField2 = new com.rameses.rcp.control.XLookupField();
        xLookupField3 = new com.rameses.rcp.control.XLookupField();
        xDateField1 = new com.rameses.rcp.control.XDateField();
        xComboBox1 = new com.rameses.rcp.control.XComboBox();
        xFormPanel2 = new com.rameses.rcp.control.XFormPanel();
        xLabel7 = new com.rameses.rcp.control.XLabel();
        xLabel4 = new com.rameses.rcp.control.XLabel();
        jScrollPane2 = new javax.swing.JScrollPane();
        xTextArea2 = new com.rameses.rcp.control.XTextArea();
        jTabbedPane1 = new javax.swing.JTabbedPane();
        jPanel1 = new javax.swing.JPanel();
        xDataTable2 = new com.rameses.rcp.control.XDataTable();
        xDataTable3 = new com.rameses.rcp.control.XDataTable();
        xFormPanel3 = new com.rameses.rcp.control.XFormPanel();
        xLookupField4 = new com.rameses.rcp.control.XLookupField();
        xActionTextField1 = new com.rameses.rcp.control.XActionTextField();
        jPanel2 = new javax.swing.JPanel();
        xDataTable1 = new com.rameses.rcp.control.XDataTable();
        xDataTable4 = new com.rameses.rcp.control.XDataTable();

        com.rameses.rcp.control.border.XTitledBorder xTitledBorder1 = new com.rameses.rcp.control.border.XTitledBorder();
        xTitledBorder1.setTitle("IPCR Information");
        xHorizontalPanel1.setBorder(xTitledBorder1);
        xHorizontalPanel1.setBorderSeparator(javax.swing.BorderFactory.createEmptyBorder(0, 0, 0, 0));
        xHorizontalPanel1.setPreferredSize(new java.awt.Dimension(1008, 165));

        xFormPanel1.setCaptionWidth(130);
        xFormPanel1.setName(""); // NOI18N
        xFormPanel1.setPreferredSize(new java.awt.Dimension(500, 100));

        xLabel1.setBorder(new com.rameses.rcp.control.border.XLineBorder());
        xLabel1.setCaption("IPCR No.");
        xLabel1.setExpression("#{entity.ipcrno}");
        xLabel1.setOpaque(true);
        xLabel1.setPreferredSize(new java.awt.Dimension(0, 16));
        xFormPanel1.add(xLabel1);

        xLookupField1.setCaption("Reviewer");
        xLookupField1.setExpression("#{item.Name.LastName +\", \"+item.Name.FirstName + \" \" + item.Name.MiddleName}");
        xLookupField1.setHandler("lookupSignatory");
        xLookupField1.setName("entity.reviewer"); // NOI18N
        xLookupField1.setPreferredSize(new java.awt.Dimension(0, 20));
        xLookupField1.setRequired(true);
        xFormPanel1.add(xLookupField1);

        xLookupField2.setCaption("Immediate Supervisor");
        xLookupField2.setExpression("#{item.Name.LastName +\", \"+item.Name.FirstName + \" \" + item.Name.MiddleName}");
        xLookupField2.setHandler("lookupSignatory");
        xLookupField2.setName("entity.supervisor"); // NOI18N
        xLookupField2.setPreferredSize(new java.awt.Dimension(0, 20));
        xLookupField2.setRequired(true);
        xFormPanel1.add(xLookupField2);

        xLookupField3.setCaption("Approver");
        xLookupField3.setExpression("#{item.Name.LastName +\", \"+item.Name.FirstName + \" \" + item.Name.MiddleName}");
        xLookupField3.setHandler("lookupSignatory");
        xLookupField3.setName("entity.approver"); // NOI18N
        xLookupField3.setPreferredSize(new java.awt.Dimension(0, 20));
        xLookupField3.setRequired(true);
        xFormPanel1.add(xLookupField3);

        xDateField1.setCaption("Date Filed");
        xDateField1.setName("entity.dtfiled"); // NOI18N
        xDateField1.setRequired(true);
        xFormPanel1.add(xDateField1);

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
        xTextArea2.setFont(new java.awt.Font("Tahoma", 1, 18)); // NOI18N
        xTextArea2.setForeground(new java.awt.Color(204, 0, 0));
        xTextArea2.setName("entity.state"); // NOI18N
        xTextArea2.setShowCaption(false);
        jScrollPane2.setViewportView(xTextArea2);

        xFormPanel2.add(jScrollPane2);

        xHorizontalPanel1.add(xFormPanel2);

        com.rameses.rcp.control.border.XTitledBorder xTitledBorder2 = new com.rameses.rcp.control.border.XTitledBorder();
        xTitledBorder2.setTitle("DPCR");
        xDataTable2.setBorder(xTitledBorder2);
        xDataTable2.setColumns(new com.rameses.rcp.common.Column[]{
            new com.rameses.rcp.common.Column(new Object[]{
                new Object[]{"name", "dptitle"}
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
        xDataTable2.setHandler("dpcrListHandler");
        xDataTable2.setName("selectedDPCR"); // NOI18N

        com.rameses.rcp.control.border.XTitledBorder xTitledBorder3 = new com.rameses.rcp.control.border.XTitledBorder();
        xTitledBorder3.setTitle("Success Indicator");
        xDataTable3.setBorder(xTitledBorder3);
        xDataTable3.setColumns(new com.rameses.rcp.common.Column[]{
            new com.rameses.rcp.common.Column(new Object[]{
                new Object[]{"name", "successindicator"}
                , new Object[]{"caption", "Success Indicator"}
                , new Object[]{"width", 200}
                , new Object[]{"minWidth", 0}
                , new Object[]{"maxWidth", 0}
                , new Object[]{"required", false}
                , new Object[]{"resizable", true}
                , new Object[]{"nullWhenEmpty", true}
                , new Object[]{"editable", true}
                , new Object[]{"editableWhen", null}
                , new Object[]{"textCase", com.rameses.rcp.constant.TextCase.NONE}
                , new Object[]{"typeHandler", new com.rameses.rcp.common.LookupColumnHandler("#{item.successindicator.title}", "lookupIPCRSuccessIndicator")}
            }),
            new com.rameses.rcp.common.Column(new Object[]{
                new Object[]{"name", "q"}
                , new Object[]{"caption", "Quality"}
                , new Object[]{"width", 200}
                , new Object[]{"minWidth", 0}
                , new Object[]{"maxWidth", 0}
                , new Object[]{"required", false}
                , new Object[]{"resizable", true}
                , new Object[]{"nullWhenEmpty", true}
                , new Object[]{"editable", true}
                , new Object[]{"editableWhen", null}
                , new Object[]{"textCase", com.rameses.rcp.constant.TextCase.NONE}
                , new Object[]{"typeHandler", new com.rameses.rcp.common.LookupColumnHandler("${item.q.title}", "lookupRatingQ")}
            }),
            new com.rameses.rcp.common.Column(new Object[]{
                new Object[]{"name", "q.rating"}
                , new Object[]{"caption", "Rate"}
                , new Object[]{"width", 50}
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
                new Object[]{"name", "e"}
                , new Object[]{"caption", "Efficiency"}
                , new Object[]{"width", 200}
                , new Object[]{"minWidth", 0}
                , new Object[]{"maxWidth", 0}
                , new Object[]{"required", false}
                , new Object[]{"resizable", true}
                , new Object[]{"nullWhenEmpty", true}
                , new Object[]{"editable", true}
                , new Object[]{"editableWhen", null}
                , new Object[]{"textCase", com.rameses.rcp.constant.TextCase.NONE}
                , new Object[]{"typeHandler", new com.rameses.rcp.common.LookupColumnHandler("#{item.e.title}", "lookupRatingE")}
            }),
            new com.rameses.rcp.common.Column(new Object[]{
                new Object[]{"name", "e.rating"}
                , new Object[]{"caption", "Rate"}
                , new Object[]{"width", 50}
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
                new Object[]{"name", "t"}
                , new Object[]{"caption", "Timeliness"}
                , new Object[]{"width", 200}
                , new Object[]{"minWidth", 0}
                , new Object[]{"maxWidth", 0}
                , new Object[]{"required", false}
                , new Object[]{"resizable", true}
                , new Object[]{"nullWhenEmpty", true}
                , new Object[]{"editable", true}
                , new Object[]{"editableWhen", null}
                , new Object[]{"textCase", com.rameses.rcp.constant.TextCase.NONE}
                , new Object[]{"typeHandler", new com.rameses.rcp.common.LookupColumnHandler("#{item.t.title}", "lookupRatingT")}
            }),
            new com.rameses.rcp.common.Column(new Object[]{
                new Object[]{"name", "t.rating"}
                , new Object[]{"caption", "Rate"}
                , new Object[]{"width", 50}
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

        xLookupField4.setCaption("Employee");
        xLookupField4.setCaptionWidth(100);
        xLookupField4.setExpression("#{item.Name.LastName +\", \"+item.Name.FirstName + \" \" + item.Name.MiddleName + \" | \" + item.Entity.Name}");
        xLookupField4.setHandler("lookupEmployee");
        xLookupField4.setName("entity.employee"); // NOI18N
        xLookupField4.setPreferredSize(new java.awt.Dimension(0, 20));
        xLookupField4.setRequired(true);
        xFormPanel3.add(xLookupField4);

        xActionTextField1.setActionCommand("searchDPCR");
        xActionTextField1.setCaption("Office Assigned");
        xActionTextField1.setCaptionWidth(100);
        xActionTextField1.setName("entity.officeassigned"); // NOI18N
        xActionTextField1.setPreferredSize(new java.awt.Dimension(400, 20));
        xActionTextField1.setRequired(true);
        xFormPanel3.add(xActionTextField1);

        javax.swing.GroupLayout jPanel1Layout = new javax.swing.GroupLayout(jPanel1);
        jPanel1.setLayout(jPanel1Layout);
        jPanel1Layout.setHorizontalGroup(
            jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel1Layout.createSequentialGroup()
                .addContainerGap()
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(xDataTable3, javax.swing.GroupLayout.DEFAULT_SIZE, 1066, Short.MAX_VALUE)
                    .addComponent(xDataTable2, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                    .addComponent(xFormPanel3, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
                .addContainerGap())
        );
        jPanel1Layout.setVerticalGroup(
            jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, jPanel1Layout.createSequentialGroup()
                .addComponent(xFormPanel3, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(xDataTable2, javax.swing.GroupLayout.PREFERRED_SIZE, 133, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(xDataTable3, javax.swing.GroupLayout.DEFAULT_SIZE, 163, Short.MAX_VALUE)
                .addGap(21, 21, 21))
        );

        jTabbedPane1.addTab("IPCR", jPanel1);

        com.rameses.rcp.control.border.XTitledBorder xTitledBorder4 = new com.rameses.rcp.control.border.XTitledBorder();
        xTitledBorder4.setTitle("Rater");
        xDataTable1.setBorder(xTitledBorder4);
        xDataTable1.setColumns(new com.rameses.rcp.common.Column[]{
            new com.rameses.rcp.common.Column(new Object[]{
                new Object[]{"name", "type"}
                , new Object[]{"caption", "Type"}
                , new Object[]{"width", 100}
                , new Object[]{"minWidth", 0}
                , new Object[]{"maxWidth", 0}
                , new Object[]{"required", true}
                , new Object[]{"resizable", true}
                , new Object[]{"nullWhenEmpty", true}
                , new Object[]{"editable", true}
                , new Object[]{"editableWhen", null}
                , new Object[]{"textCase", com.rameses.rcp.constant.TextCase.NONE}
                , new Object[]{"typeHandler", new com.rameses.rcp.common.ComboBoxColumnHandler(null, null, null)}
            }),
            new com.rameses.rcp.common.Column(new Object[]{
                new Object[]{"name", "commentandremarks"}
                , new Object[]{"caption", "Comment And Remarks"}
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
        xDataTable1.setDynamic(true);
        xDataTable1.setHandler("behaviorRaterHandler");
        xDataTable1.setName("selectedbehavioral"); // NOI18N

        com.rameses.rcp.control.border.XTitledBorder xTitledBorder5 = new com.rameses.rcp.control.border.XTitledBorder();
        xTitledBorder5.setTitle("Rating");
        xDataTable4.setBorder(xTitledBorder5);
        xDataTable4.setColumns(new com.rameses.rcp.common.Column[]{
            new com.rameses.rcp.common.Column(new Object[]{
                new Object[]{"name", "Behavior"}
                , new Object[]{"caption", "behavior"}
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
                new Object[]{"name", "definition"}
                , new Object[]{"caption", "Definition"}
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
            }),
            new com.rameses.rcp.common.Column(new Object[]{
                new Object[]{"name", "rating"}
                , new Object[]{"caption", "Rating"}
                , new Object[]{"width", 100}
                , new Object[]{"minWidth", 0}
                , new Object[]{"maxWidth", 0}
                , new Object[]{"required", false}
                , new Object[]{"resizable", true}
                , new Object[]{"nullWhenEmpty", true}
                , new Object[]{"editable", false}
                , new Object[]{"textCase", com.rameses.rcp.constant.TextCase.NONE}
                , new Object[]{"typeHandler", new com.rameses.rcp.common.IntegerColumnHandler(null, -1, -1)}
            })
        });
        xDataTable4.setDepends(new String[] {"selectedBehavrioral"});
        xDataTable4.setHandler("behaviorRatingHandler");
        xDataTable4.setName("selectedRating"); // NOI18N

        javax.swing.GroupLayout jPanel2Layout = new javax.swing.GroupLayout(jPanel2);
        jPanel2.setLayout(jPanel2Layout);
        jPanel2Layout.setHorizontalGroup(
            jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel2Layout.createSequentialGroup()
                .addContainerGap()
                .addGroup(jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(xDataTable1, javax.swing.GroupLayout.DEFAULT_SIZE, 1066, Short.MAX_VALUE)
                    .addComponent(xDataTable4, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
                .addContainerGap())
        );
        jPanel2Layout.setVerticalGroup(
            jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel2Layout.createSequentialGroup()
                .addContainerGap()
                .addComponent(xDataTable1, javax.swing.GroupLayout.PREFERRED_SIZE, 135, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                .addComponent(xDataTable4, javax.swing.GroupLayout.DEFAULT_SIZE, 208, Short.MAX_VALUE)
                .addContainerGap())
        );

        jTabbedPane1.addTab("Behavioral Rater Form", jPanel2);

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(this);
        this.setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addContainerGap()
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(xHorizontalPanel1, javax.swing.GroupLayout.Alignment.TRAILING, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                    .addComponent(jTabbedPane1))
                .addContainerGap())
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, layout.createSequentialGroup()
                .addContainerGap()
                .addComponent(xHorizontalPanel1, javax.swing.GroupLayout.PREFERRED_SIZE, 156, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(jTabbedPane1))
        );
    }// </editor-fold>//GEN-END:initComponents


    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JPanel jPanel1;
    private javax.swing.JPanel jPanel2;
    private javax.swing.JScrollPane jScrollPane2;
    private javax.swing.JTabbedPane jTabbedPane1;
    private com.rameses.rcp.control.XActionTextField xActionTextField1;
    private com.rameses.rcp.control.XComboBox xComboBox1;
    private com.rameses.rcp.control.XDataTable xDataTable1;
    private com.rameses.rcp.control.XDataTable xDataTable2;
    private com.rameses.rcp.control.XDataTable xDataTable3;
    private com.rameses.rcp.control.XDataTable xDataTable4;
    private com.rameses.rcp.control.XDateField xDateField1;
    private com.rameses.rcp.control.XFormPanel xFormPanel1;
    private com.rameses.rcp.control.XFormPanel xFormPanel2;
    private com.rameses.rcp.control.XFormPanel xFormPanel3;
    private com.rameses.rcp.control.XHorizontalPanel xHorizontalPanel1;
    private com.rameses.rcp.control.XLabel xLabel1;
    private com.rameses.rcp.control.XLabel xLabel4;
    private com.rameses.rcp.control.XLabel xLabel7;
    private com.rameses.rcp.control.XLookupField xLookupField1;
    private com.rameses.rcp.control.XLookupField xLookupField2;
    private com.rameses.rcp.control.XLookupField xLookupField3;
    private com.rameses.rcp.control.XLookupField xLookupField4;
    private com.rameses.rcp.control.XTextArea xTextArea2;
    // End of variables declaration//GEN-END:variables
}
