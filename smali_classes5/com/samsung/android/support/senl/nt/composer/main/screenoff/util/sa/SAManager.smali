.class public Lcom/samsung/android/support/senl/nt/composer/main/screenoff/util/sa/SAManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/composer/main/screenoff/util/sa/SAConstants;


# static fields
.field public static final INSTANCE:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/util/sa/SAManager;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field

.field private static final PEN_SIZE:[I

.field private static mExitReason:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/util/sa/SAManager;->PEN_SIZE:[I

    const/4 v0, -0x1

    sput v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/util/sa/SAManager;->mExitReason:I

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/util/sa/SAManager;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/util/sa/SAManager;-><init>()V

    sput-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/util/sa/SAManager;->INSTANCE:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/util/sa/SAManager;

    return-void

    nop

    :array_0
    .array-data 4
        0x5
        0xf
        0x1e
        0x2d
        0x3c
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getColorDetail(I)I
    .locals 0

    sparse-switch p1, :sswitch_data_0

    const/4 p1, 0x0

    goto :goto_0

    :sswitch_0
    const/4 p1, 0x1

    goto :goto_0

    :sswitch_1
    const/4 p1, 0x2

    goto :goto_0

    :sswitch_2
    const/4 p1, 0x5

    goto :goto_0

    :sswitch_3
    const/4 p1, 0x3

    goto :goto_0

    :sswitch_4
    const/4 p1, 0x4

    :goto_0
    return p1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x935618 -> :sswitch_4
        -0x932271 -> :sswitch_3
        -0x8f8f90 -> :sswitch_2
        -0x8d7601 -> :sswitch_4
        -0x6d4f1e -> :sswitch_4
        -0x3d809b -> :sswitch_1
        -0x335916 -> :sswitch_4
        -0x262627 -> :sswitch_2
        -0x252526 -> :sswitch_2
        -0x105529 -> :sswitch_1
        -0xfad98 -> :sswitch_1
        -0x41eaa -> :sswitch_0
        -0x22c2 -> :sswitch_0
    .end sparse-switch
.end method

.method private getExitReason()I
    .locals 1

    sget v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/util/sa/SAManager;->mExitReason:I

    return v0
.end method

.method private getPenColorDetailValue(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 0

    if-eqz p2, :cond_0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "_ON"

    :goto_0
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "_OFF"

    goto :goto_0
.end method

.method private getPenSizeLevelDetailValue(I)J
    .locals 3

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/util/sa/SAManager;->PEN_SIZE:[I

    array-length v0, v0

    const/4 v1, 0x0

    :cond_0
    if-ge v1, v0, :cond_1

    sget-object v2, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/util/sa/SAManager;->PEN_SIZE:[I

    aget v2, v2, v1

    add-int/lit8 v1, v1, 0x1

    if-ne v2, p1, :cond_0

    int-to-long v0, v1

    return-wide v0

    :cond_1
    const-wide/16 v0, 0x3

    return-wide v0
.end method

.method private getSettingsSavedType(I)J
    .locals 2

    add-int/lit8 p1, p1, 0x1

    int-to-long v0, p1

    return-wide v0
.end method

.method private onExitNoStroke()V
    .locals 4

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/util/sa/SAManager;->getExitReason()I

    move-result v0

    const-string v1, "9953"

    const-string v2, "601"

    if-eqz v0, :cond_4

    const/4 v3, 0x1

    if-eq v0, v3, :cond_3

    const/4 v3, 0x5

    if-eq v0, v3, :cond_2

    const/4 v3, 0x6

    if-eq v0, v3, :cond_1

    const/4 v3, 0x7

    if-eq v0, v3, :cond_0

    goto :goto_1

    :cond_0
    const-string v0, "5"

    goto :goto_0

    :cond_1
    const-string v0, "4"

    goto :goto_0

    :cond_2
    const-string v0, "3"

    goto :goto_0

    :cond_3
    const-string v0, "2"

    goto :goto_0

    :cond_4
    const-string v0, "1"

    :goto_0
    invoke-static {v2, v1, v0}, Lcom/samsung/android/support/senl/nt/base/common/samsunganalytices/NotesSamsungAnalytics;->insertLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method private onExitStroke(I)V
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/util/sa/SAManager;->getExitReason()I

    move-result v0

    const-string v1, "9955"

    const-string v2, "601"

    if-eqz v0, :cond_0

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    const-string v0, "7"

    goto :goto_0

    :pswitch_1
    const-string v0, "6"

    goto :goto_0

    :pswitch_2
    const-string v0, "5"

    goto :goto_0

    :pswitch_3
    const-string v0, "4"

    goto :goto_0

    :pswitch_4
    const-string v0, "3"

    goto :goto_0

    :pswitch_5
    const-string v0, "2"

    goto :goto_0

    :cond_0
    const-string v0, "1"

    :goto_0
    invoke-static {v2, v1, v0}, Lcom/samsung/android/support/senl/nt/base/common/samsunganalytices/NotesSamsungAnalytics;->insertLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/util/sa/SAManager;->getSettingsSavedType(I)J

    move-result-wide v0

    const-string p1, "9972"

    invoke-static {v2, p1, v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/samsunganalytices/NotesSamsungAnalytics;->insertLog(Ljava/lang/String;Ljava/lang/String;J)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public onEraseAll()V
    .locals 2

    const-string v0, "601"

    const-string v1, "6007"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/samsunganalytices/NotesSamsungAnalytics;->insertLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onExit(ZIILjava/lang/String;ZI)V
    .locals 2

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/util/sa/SAManager;->getExitReason()I

    move-result v0

    const/4 v1, -0x1

    if-ne v1, v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/util/sa/SAManager;->onExitNoStroke()V

    goto :goto_0

    :cond_1
    invoke-direct {p0, p6}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/util/sa/SAManager;->onExitStroke(I)V

    :goto_0
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "601"

    const-string p6, "9954"

    invoke-static {p2, p6, p1}, Lcom/samsung/android/support/senl/nt/base/common/samsunganalytices/NotesSamsungAnalytics;->insertLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p3}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/util/sa/SAManager;->getPenSizeLevelDetailValue(I)J

    move-result-wide v0

    invoke-direct {p0, p4, p5}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/util/sa/SAManager;->getPenColorDetailValue(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    const-string p3, "9970"

    invoke-static {p2, p3, v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/samsunganalytices/NotesSamsungAnalytics;->insertLog(Ljava/lang/String;Ljava/lang/String;J)V

    const-string p3, "9988"

    invoke-static {p2, p3, p1}, Lcom/samsung/android/support/senl/nt/base/common/samsunganalytices/NotesSamsungAnalytics;->insertLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onPenClicked()V
    .locals 2

    const-string v0, "601"

    const-string v1, "6001"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/samsunganalytices/NotesSamsungAnalytics;->insertLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onPenColorChanged(I)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/util/sa/SAManager;->getColorDetail(I)I

    move-result p1

    if-lez p1, :cond_0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "601"

    const-string v1, "4295"

    invoke-static {v0, v1, p1}, Lcom/samsung/android/support/senl/nt/base/common/samsunganalytices/NotesSamsungAnalytics;->insertLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onPenSizeChanged(I)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/util/sa/SAManager;->getPenSizeLevelDetailValue(I)J

    move-result-wide v0

    const-string p1, "601"

    const-string v2, "6006"

    invoke-static {p1, v2, v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/samsunganalytices/NotesSamsungAnalytics;->insertLog(Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method public onPinClicked()V
    .locals 2

    const-string v0, "601"

    const-string v1, "6003"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/samsunganalytices/NotesSamsungAnalytics;->insertLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onRemoverClicked()V
    .locals 3

    const-string v0, "601"

    const-string v1, "6002"

    const-string v2, "1"

    invoke-static {v0, v1, v2}, Lcom/samsung/android/support/senl/nt/base/common/samsunganalytices/NotesSamsungAnalytics;->insertLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onRemoverOpened()V
    .locals 3

    const-string v0, "601"

    const-string v1, "6002"

    const-string v2, "2"

    invoke-static {v0, v1, v2}, Lcom/samsung/android/support/senl/nt/base/common/samsunganalytices/NotesSamsungAnalytics;->insertLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onSaveClicked()V
    .locals 2

    const-string v0, "601"

    const-string v1, "4294"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/samsunganalytices/NotesSamsungAnalytics;->insertLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onSaveNoteDialogCancel()V
    .locals 2

    const-string v0, "601"

    const-string v1, "6021"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/samsunganalytices/NotesSamsungAnalytics;->insertLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onSaveNoteDialogDiscard()V
    .locals 2

    const-string v0, "601"

    const-string v1, "6022"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/samsunganalytices/NotesSamsungAnalytics;->insertLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onSaveNoteDialogSave()V
    .locals 2

    const-string v0, "601"

    const-string v1, "6023"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/samsunganalytices/NotesSamsungAnalytics;->insertLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onScrollDownClicked()V
    .locals 2

    const-string v0, "601"

    const-string v1, "6008"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/samsunganalytices/NotesSamsungAnalytics;->insertLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onScrollUpClicked()V
    .locals 2

    const-string v0, "601"

    const-string v1, "6009"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/samsunganalytices/NotesSamsungAnalytics;->insertLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onSelectNoteDialogCancel()V
    .locals 2

    const-string v0, "601"

    const-string v1, "6024"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/samsunganalytices/NotesSamsungAnalytics;->insertLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onSelectNoteDialogDiscard()V
    .locals 2

    const-string v0, "601"

    const-string v1, "6025"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/samsunganalytices/NotesSamsungAnalytics;->insertLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onSelectNoteDialogSave()V
    .locals 2

    const-string v0, "601"

    const-string v1, "6026"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/samsunganalytices/NotesSamsungAnalytics;->insertLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onShow(Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "PenButtonHoverTap"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_1
    const-string v0, "LoadNoteByDoubleTapOnAOD"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_2
    const-string v0, "PenDetach"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    const-string p1, "6000"

    const-string v0, "601"

    packed-switch v1, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    const-string v1, "2"

    goto :goto_1

    :pswitch_1
    const-string v1, "3"

    goto :goto_1

    :pswitch_2
    const-string v1, "1"

    :goto_1
    invoke-static {v0, p1, v1}, Lcom/samsung/android/support/senl/nt/base/common/samsunganalytices/NotesSamsungAnalytics;->insertLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x7a0a2214 -> :sswitch_2
        -0x79c140ec -> :sswitch_1
        -0x675e448e -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setExitReason(I)V
    .locals 0

    sput p1, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/util/sa/SAManager;->mExitReason:I

    return-void
.end method
