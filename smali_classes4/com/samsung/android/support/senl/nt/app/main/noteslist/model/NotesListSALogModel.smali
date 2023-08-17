.class public Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/NotesListSALogModel;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addSAStatusLogOnNewNotes(ILjava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/samsung/android/support/senl/nt/app/common/FolderConstants$AllNotes;->UUID:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x1

    const-string v1, "9985"

    if-eqz p1, :cond_1

    if-ne p0, v0, :cond_0

    const-string p0, "In App_Tab All_Finger"

    goto :goto_0

    :cond_0
    const-string p0, "In App_Tab All_Spen"

    goto :goto_0

    :cond_1
    if-ne p0, v0, :cond_2

    const-string p0, "In Category_Tab Collection_Finger"

    goto :goto_0

    :cond_2
    const-string p0, "In Category_Tab Collection_Spen"

    :goto_0
    invoke-static {v1, p0}, Lcom/samsung/android/support/senl/nt/base/common/samsunganalytices/CommonSamsungAnalytics;->insertStatusLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static addSAlogOnBackKeyDown(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/util/StorageUtils;->isAvailableMinimumMemory()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/samsung/android/support/senl/nt/app/common/FolderConstants$AllNotes;->UUID:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "101"

    :goto_0
    invoke-static {p0}, Lcom/samsung/android/support/senl/nt/base/common/samsunganalytices/CommonSamsungAnalytics;->insertLog(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const-string v0, "favorite:///"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p0, "113"

    goto :goto_0

    :cond_2
    const-string v0, "lock:///"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string p0, "114"

    goto :goto_0

    :cond_3
    const-string v0, "recentlyImported:///"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string p0, "105"

    goto :goto_0

    :cond_4
    sget-object v0, Lcom/samsung/android/support/senl/nt/app/common/FolderConstants$RecycleBin;->UUID:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string p0, "531"

    goto :goto_0

    :cond_5
    sget-object v0, Lcom/samsung/android/support/senl/nt/app/common/FolderConstants$ScreenOffMemo;->UUID:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string p0, "202"

    goto :goto_0

    :cond_6
    const-string v0, "tag:///"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string p0, "115"

    goto :goto_0

    :cond_7
    sget-object v0, Lcom/samsung/android/support/senl/nt/app/common/FolderConstants$SharedNotes;->UUID:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string p0, "666"

    goto :goto_0

    :cond_8
    sget-object v0, Lcom/samsung/android/support/senl/nt/app/common/FolderConstants$OldNotes;->UUID:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_9

    const-string p0, "536"

    goto :goto_0

    :cond_9
    const-string p0, "201"

    goto :goto_0

    :goto_1
    return-void
.end method

.method public static addSAlogOnItemLongPressedForFilterFolder(Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/samsung/android/support/senl/nt/app/common/FolderConstants$AllNotes;->UUID:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "102"

    if-eqz v0, :cond_1

    :cond_0
    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/base/common/samsunganalytices/CommonSamsungAnalytics;->insertLog(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const-string v0, "favorite:///"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p0, "116"

    :goto_0
    invoke-static {p0}, Lcom/samsung/android/support/senl/nt/base/common/samsunganalytices/CommonSamsungAnalytics;->insertLog(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const-string v0, "lock:///"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string p0, "117"

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/samsung/android/support/senl/nt/app/common/FolderConstants$ScreenOffMemo;->UUID:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "118"

    goto :goto_0

    :goto_1
    return-void
.end method

.method public static addSAlogOnNewNote(ZIILjava/lang/String;)V
    .locals 2

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    invoke-static {p3}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/NotesListSALogModel;->getSAScreenIDInSelectModeForFilterFolder(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 v1, 0x7

    if-ne p1, v1, :cond_1

    const-string p1, "621"

    goto :goto_0

    :cond_1
    const/16 v1, 0xa

    if-ne p1, v1, :cond_2

    const-string p1, "666"

    goto :goto_0

    :cond_2
    const-string p1, "101"

    :goto_0
    if-eqz p0, :cond_3

    const-string p0, "8024"

    goto :goto_1

    :cond_3
    const-string p0, "0003"

    :goto_1
    if-ne p2, v0, :cond_4

    const-string v0, "1"

    goto :goto_2

    :cond_4
    const-string v0, "2"

    :goto_2
    invoke-static {p1, p0, v0}, Lcom/samsung/android/support/senl/nt/base/common/samsunganalytices/CommonSamsungAnalytics;->insertLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p2, p3}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/NotesListSALogModel;->addSAStatusLogOnNewNotes(ILjava/lang/String;)V

    return-void
.end method

.method public static addSAlogOnOptionsItemSelected(IIZILjava/lang/String;)V
    .locals 5

    const/16 v0, 0x12

    const/4 v1, 0x4

    const/4 v2, 0x2

    if-ne p0, v2, :cond_0

    invoke-static {p4}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/NotesListSALogModel;->getSAScreenIDInEditModeForFilterFolder(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    goto :goto_0

    :cond_0
    if-ne p0, v1, :cond_1

    const-string p4, "222"

    goto :goto_0

    :cond_1
    if-ne p0, v0, :cond_2

    const-string p4, "122"

    goto :goto_0

    :cond_2
    const-string p4, "102"

    :goto_0
    const-string v3, "0"

    const-string v4, "1"

    if-eq p0, v2, :cond_a

    if-eq p0, v1, :cond_3

    if-eq p0, v0, :cond_a

    goto/16 :goto_5

    :cond_3
    sget p0, Lcom/samsung/android/support/senl/nt/app/R$id;->action_delete:I

    if-ne p1, p0, :cond_4

    const-string p0, "2222"

    goto :goto_2

    :cond_4
    sget p0, Lcom/samsung/android/support/senl/nt/app/R$id;->action_save_as_file:I

    if-ne p1, p0, :cond_5

    const-string p0, "2226"

    goto :goto_2

    :cond_5
    sget p0, Lcom/samsung/android/support/senl/nt/app/R$id;->action_share:I

    if-ne p1, p0, :cond_6

    const-string p0, "2223"

    goto :goto_2

    :cond_6
    sget p0, Lcom/samsung/android/support/senl/nt/app/R$id;->action_move:I

    if-ne p1, p0, :cond_7

    const-string p0, "2224"

    goto :goto_2

    :cond_7
    sget p0, Lcom/samsung/android/support/senl/nt/app/R$id;->action_lock:I

    if-ne p1, p0, :cond_9

    const-string p0, "2225"

    if-eqz p2, :cond_8

    :goto_1
    invoke-static {p4, p0, v3}, Lcom/samsung/android/support/senl/nt/base/common/samsunganalytices/CommonSamsungAnalytics;->insertLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_8
    invoke-static {p4, p0, v4}, Lcom/samsung/android/support/senl/nt/base/common/samsunganalytices/CommonSamsungAnalytics;->insertLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_9
    sget p0, Lcom/samsung/android/support/senl/nt/app/R$id;->action_secure_folder_move:I

    if-ne p1, p0, :cond_17

    const-string p0, "2227"

    goto :goto_3

    :cond_a
    sget p0, Lcom/samsung/android/support/senl/nt/app/R$id;->action_delete:I

    if-ne p1, p0, :cond_b

    const-string p0, "2032"

    :goto_2
    invoke-static {p4, p0, p3}, Lcom/samsung/android/support/senl/nt/base/common/samsunganalytices/CommonSamsungAnalytics;->insertLog(Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_5

    :cond_b
    sget p0, Lcom/samsung/android/support/senl/nt/app/R$id;->action_save_as_file:I

    if-ne p1, p0, :cond_c

    const-string p0, "2036"

    goto :goto_2

    :cond_c
    sget p0, Lcom/samsung/android/support/senl/nt/app/R$id;->action_share:I

    if-ne p1, p0, :cond_d

    const-string p0, "2033"

    goto :goto_2

    :cond_d
    sget p0, Lcom/samsung/android/support/senl/nt/app/R$id;->action_rename:I

    if-ne p1, p0, :cond_e

    const-string p0, "2037"

    :goto_3
    invoke-static {p4, p0}, Lcom/samsung/android/support/senl/nt/base/common/samsunganalytices/CommonSamsungAnalytics;->insertLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :cond_e
    sget p0, Lcom/samsung/android/support/senl/nt/app/R$id;->action_move:I

    if-ne p1, p0, :cond_f

    const-string p0, "2034"

    goto :goto_2

    :cond_f
    sget p0, Lcom/samsung/android/support/senl/nt/app/R$id;->action_lock:I

    if-ne p1, p0, :cond_10

    const-string p0, "2035"

    if-eqz p2, :cond_8

    goto :goto_1

    :cond_10
    sget p0, Lcom/samsung/android/support/senl/nt/app/R$id;->action_secure_folder_move:I

    if-ne p1, p0, :cond_11

    const-string p0, "2050"

    goto :goto_3

    :cond_11
    sget p0, Lcom/samsung/android/support/senl/nt/app/R$id;->action_duplicate:I

    if-ne p1, p0, :cond_12

    const-string p0, "2053"

    goto :goto_3

    :cond_12
    sget p0, Lcom/samsung/android/support/senl/nt/app/R$id;->action_add_to_favorites:I

    const-string p2, "2043"

    if-ne p1, p0, :cond_13

    const-string p0, "a"

    :goto_4
    invoke-static {p4, p2, p0}, Lcom/samsung/android/support/senl/nt/base/common/samsunganalytices/CommonSamsungAnalytics;->insertLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :cond_13
    sget p0, Lcom/samsung/android/support/senl/nt/app/R$id;->action_remove_from_favorites:I

    if-ne p1, p0, :cond_14

    const-string p0, "b"

    goto :goto_4

    :cond_14
    sget p0, Lcom/samsung/android/support/senl/nt/app/R$id;->action_change_color:I

    if-ne p1, p0, :cond_15

    const-string p0, "2039"

    goto :goto_3

    :cond_15
    sget p0, Lcom/samsung/android/support/senl/nt/app/R$id;->action_start_coedit_with_standalone:I

    if-ne p1, p0, :cond_16

    const-string p0, "7700"

    goto :goto_3

    :cond_16
    sget p0, Lcom/samsung/android/support/senl/nt/app/R$id;->action_start_coedit_with_space:I

    if-ne p1, p0, :cond_17

    const-string p0, "7703"

    goto :goto_3

    :cond_17
    :goto_5
    return-void
.end method

.method public static addSAlogOnResume(ILjava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/util/StorageUtils;->isAvailableMinimumMemory()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {p0}, Lcom/samsung/android/support/senl/nt/app/common/util/FeatureUtils;->isCoeditMode(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "680"

    :goto_0
    invoke-static {p0}, Lcom/samsung/android/support/senl/nt/base/common/samsunganalytices/CommonSamsungAnalytics;->insertLog(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_1
    invoke-static {p0}, Lcom/samsung/android/support/senl/nt/app/common/util/FeatureUtils;->isCoeditSpaceMode(I)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p0, "681"

    goto :goto_0

    :cond_2
    invoke-static {p0}, Lcom/samsung/android/support/senl/nt/app/common/util/FeatureUtils;->isEditMode(I)Z

    move-result v0

    if-eqz v0, :cond_9

    const/4 v0, 0x6

    if-ne p0, v0, :cond_3

    const-string p0, "532"

    goto :goto_0

    :cond_3
    const/4 v0, 0x4

    if-ne p0, v0, :cond_4

    const-string p0, "222"

    goto :goto_0

    :cond_4
    const/16 v0, 0x15

    if-ne p0, v0, :cond_5

    const-string p0, "537"

    goto :goto_0

    :cond_5
    const/16 v0, 0xb

    if-ne p0, v0, :cond_6

    const-string p0, "668"

    goto :goto_0

    :cond_6
    const/16 v0, 0x8

    if-ne p0, v0, :cond_7

    const-string p0, "667"

    goto :goto_0

    :cond_7
    const/16 v0, 0x12

    if-ne p0, v0, :cond_8

    const-string p0, "122"

    goto :goto_0

    :cond_8
    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/NotesListSALogModel;->getSAScreenIDInEditModeForFilterFolder(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_9
    const/4 v0, 0x5

    if-ne p0, v0, :cond_a

    const-string p0, "531"

    goto :goto_0

    :cond_a
    const/4 v0, 0x3

    if-ne p0, v0, :cond_b

    const-string p0, "221"

    goto :goto_0

    :cond_b
    const/16 v0, 0x14

    if-ne p0, v0, :cond_c

    const-string p0, "536"

    goto :goto_0

    :cond_c
    const/16 v0, 0xa

    if-ne p0, v0, :cond_d

    const-string p0, "666"

    goto :goto_0

    :cond_d
    const/4 v0, 0x7

    if-ne p0, v0, :cond_e

    const-string p0, "621"

    goto :goto_0

    :cond_e
    const/16 v0, 0x11

    if-ne p0, v0, :cond_f

    const-string p0, "115"

    goto :goto_0

    :cond_f
    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/NotesListSALogModel;->getSAScreenIDInSelectModeForFilterFolder(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :goto_1
    return-void
.end method

.method public static addSAlogOnSelectAll(IZLjava/lang/String;)V
    .locals 4

    const-string v0, "1"

    const-string v1, "0"

    const/4 v2, 0x6

    if-ne p0, v2, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    const-string p0, "532"

    const-string p1, "5321"

    :goto_1
    invoke-static {p0, p1, v0}, Lcom/samsung/android/support/senl/nt/base/common/samsunganalytices/CommonSamsungAnalytics;->insertLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    :cond_1
    const/4 v2, 0x4

    if-ne p0, v2, :cond_3

    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    move-object v0, v1

    :goto_2
    const-string p0, "222"

    const-string p1, "2221"

    goto :goto_1

    :cond_3
    const/16 v2, 0x15

    if-ne p0, v2, :cond_5

    if-eqz p1, :cond_4

    goto :goto_3

    :cond_4
    move-object v0, v1

    :goto_3
    const-string p0, "537"

    const-string p1, "5350"

    goto :goto_1

    :cond_5
    const/16 v2, 0xb

    if-ne p0, v2, :cond_7

    if-eqz p1, :cond_6

    goto :goto_4

    :cond_6
    move-object v0, v1

    :goto_4
    const-string p0, "668"

    const-string p1, "6635"

    goto :goto_1

    :cond_7
    const/16 v2, 0x8

    if-ne p0, v2, :cond_9

    if-eqz p1, :cond_8

    goto :goto_5

    :cond_8
    move-object v0, v1

    :goto_5
    const-string p0, "667"

    const-string p1, "6631"

    goto :goto_1

    :cond_9
    const/16 v2, 0x12

    const-string v3, "2031"

    if-ne p0, v2, :cond_b

    if-eqz p1, :cond_a

    goto :goto_6

    :cond_a
    move-object v0, v1

    :goto_6
    const-string p0, "122"

    goto :goto_7

    :cond_b
    invoke-static {p2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/NotesListSALogModel;->getSAScreenIDInEditModeForFilterFolder(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p1, :cond_c

    goto :goto_7

    :cond_c
    move-object v0, v1

    :goto_7
    invoke-static {p0, v3, v0}, Lcom/samsung/android/support/senl/nt/base/common/samsunganalytices/CommonSamsungAnalytics;->insertLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_8
    return-void
.end method

.method public static getSAScreenIDInEditModeForFilterFolder(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/samsung/android/support/senl/nt/app/common/FolderConstants$AllNotes;->UUID:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "102"

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    const-string v0, "favorite:///"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "116"

    return-object p0

    :cond_1
    const-string v0, "lock:///"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p0, "117"

    return-object p0

    :cond_2
    sget-object v0, Lcom/samsung/android/support/senl/nt/app/common/FolderConstants$ScreenOffMemo;->UUID:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    const-string p0, "118"

    return-object p0

    :cond_3
    return-object v1
.end method

.method public static getSAScreenIDInSelectModeForFilterFolder(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/nt/app/common/FolderConstants$AllNotes;->UUID:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "101"

    return-object p0

    :cond_0
    const-string v0, "favorite:///"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "113"

    return-object p0

    :cond_1
    const-string v0, "lock:///"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p0, "114"

    return-object p0

    :cond_2
    const-string v0, "recentlyImported:///"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string p0, "105"

    return-object p0

    :cond_3
    sget-object v0, Lcom/samsung/android/support/senl/nt/app/common/FolderConstants$ScreenOffMemo;->UUID:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    const-string p0, "202"

    return-object p0

    :cond_4
    const-string p0, "201"

    return-object p0
.end method
