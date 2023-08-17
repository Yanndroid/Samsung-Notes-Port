.class public Lcom/samsung/android/support/senl/nt/base/common/diagmon/DiagMonError;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/base/common/diagmon/DiagMonError$SPEN_SUB_MSG;,
        Lcom/samsung/android/support/senl/nt/base/common/diagmon/DiagMonError$SPEN_SUB;,
        Lcom/samsung/android/support/senl/nt/base/common/diagmon/DiagMonError$APP_SUB_MSG;,
        Lcom/samsung/android/support/senl/nt/base/common/diagmon/DiagMonError$APP_SUB;,
        Lcom/samsung/android/support/senl/nt/base/common/diagmon/DiagMonError$SERVER_SUB_MSG;,
        Lcom/samsung/android/support/senl/nt/base/common/diagmon/DiagMonError$SERVER_SUB;,
        Lcom/samsung/android/support/senl/nt/base/common/diagmon/DiagMonError$SYNC_SUB_MSG;,
        Lcom/samsung/android/support/senl/nt/base/common/diagmon/DiagMonError$SYNC_SUB;,
        Lcom/samsung/android/support/senl/nt/base/common/diagmon/DiagMonError$MAIN_PREFERENCE_NAME;,
        Lcom/samsung/android/support/senl/nt/base/common/diagmon/DiagMonError$MAIN;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getErrorMsg(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "SPEN_ERROR"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x3

    goto :goto_0

    :sswitch_1
    const-string v0, "APP_ERROR"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_2
    const-string v0, "SERVER_ERROR"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_3
    const-string v0, "SYNC_ERROR"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    const-string p0, ""

    goto :goto_1

    :pswitch_0
    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/base/common/diagmon/DiagMonError;->getSubSPenErrorMsg(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :pswitch_1
    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/base/common/diagmon/DiagMonError;->getSubAppErrorMsg(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :pswitch_2
    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/base/common/diagmon/DiagMonError;->getSubServerErrorMsg(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :pswitch_3
    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/base/common/diagmon/DiagMonError;->getSubSyncErrorMsg(I)Ljava/lang/String;

    move-result-object p0

    :goto_1
    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x1b7950bc -> :sswitch_3
        0x463fa1ec -> :sswitch_2
        0x49bff62a -> :sswitch_1
        0x4d18c02f -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static getSubAppErrorMsg(I)Ljava/lang/String;
    .locals 1

    const/16 v0, 0x64

    if-eq p0, v0, :cond_0

    const-string p0, ""

    goto :goto_0

    :cond_0
    const-string p0, "App Update Required"

    :goto_0
    return-object p0
.end method

.method private static getSubSPenErrorMsg(I)Ljava/lang/String;
    .locals 0

    packed-switch p0, :pswitch_data_0

    const-string p0, ""

    goto :goto_0

    :pswitch_0
    const-string p0, "Invalid file hash"

    goto :goto_0

    :pswitch_1
    const-string p0, "Resource lacking is reported from server"

    goto :goto_0

    :pswitch_2
    const-string p0, "Invalid data size"

    goto :goto_0

    :pswitch_3
    const-string p0, "A file hash is not valid"

    goto :goto_0

    :pswitch_4
    const-string p0, "Spen SDK found a unsupported type"

    goto :goto_0

    :pswitch_5
    const-string p0, "Spen SDK can\'t parse a xml note"

    goto :goto_0

    :pswitch_6
    const-string p0, "Spen SDK can\'t compose a xml note"

    goto :goto_0

    :pswitch_7
    const-string p0, "Spen SDK can\'t save a note"

    :goto_0
    return-object p0

    :pswitch_data_0
    .packed-switch 0x12c
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static getSubServerErrorMsg(I)Ljava/lang/String;
    .locals 1

    const/16 v0, 0x64

    if-eq p0, v0, :cond_0

    const-string p0, ""

    goto :goto_0

    :cond_0
    const-string p0, "Internal Server Error"

    :goto_0
    return-object p0
.end method

.method private static getSubSyncErrorMsg(I)Ljava/lang/String;
    .locals 1

    const/16 v0, 0xc8

    if-eq p0, v0, :cond_1

    const/16 v0, 0xc9

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    const-string p0, ""

    goto :goto_0

    :pswitch_0
    const-string p0, "cannot handle this note due to OOM"

    goto :goto_0

    :pswitch_1
    const-string p0, "The size of a note is over 1GB"

    goto :goto_0

    :pswitch_2
    const-string p0, "Too many objects"

    goto :goto_0

    :pswitch_3
    const-string p0, "Note sync error"

    goto :goto_0

    :cond_0
    const-string p0, "syncModifiedTime is future"

    goto :goto_0

    :cond_1
    const-string p0, "Folder sync error"

    :goto_0
    return-object p0

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
