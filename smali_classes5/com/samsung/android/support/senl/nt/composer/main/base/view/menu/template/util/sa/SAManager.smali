.class public Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/util/sa/SAManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/util/sa/SAConstants;


# static fields
.field public static final INSTANCE:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/util/sa/SAManager;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/util/sa/SAManager;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/util/sa/SAManager;-><init>()V

    sput-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/util/sa/SAManager;->INSTANCE:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/util/sa/SAManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getOrdinalNumberPostfix(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const-string p1, "st"

    return-object p1

    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    const-string p1, "nd"

    return-object p1

    :cond_1
    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    const-string p1, "rd"

    return-object p1

    :cond_2
    const-string p1, "th"

    return-object p1
.end method


# virtual methods
.method public onAddTemplate()V
    .locals 2

    const-string v0, "401"

    const-string v1, "3512"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/samsunganalytices/NotesSamsungAnalytics;->insertLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onApplyToAllPages(I)V
    .locals 3

    int-to-long v0, p1

    const-string p1, "401"

    const-string v2, "3510"

    invoke-static {p1, v2, v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/samsunganalytices/NotesSamsungAnalytics;->insertLog(Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method public onDelete()V
    .locals 2

    const-string v0, "401"

    const-string v1, "3513"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/samsunganalytices/NotesSamsungAnalytics;->insertLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onDone()V
    .locals 2

    const-string v0, "401"

    const-string v1, "3514"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/samsunganalytices/NotesSamsungAnalytics;->insertLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onExpandCollapse(I)V
    .locals 3

    int-to-long v0, p1

    const-string p1, "401"

    const-string v2, "3511"

    invoke-static {p1, v2, v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/samsunganalytices/NotesSamsungAnalytics;->insertLog(Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method public onImageTap(Z)V
    .locals 1

    if-eqz p1, :cond_0

    const-string p1, "510"

    const-string v0, "5819"

    goto :goto_0

    :cond_0
    const-string p1, "401"

    const-string v0, "3800"

    :goto_0
    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/nt/base/common/samsunganalytices/NotesSamsungAnalytics;->insertLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onPdfDownload()V
    .locals 2

    const-string v0, "401"

    const-string v1, "3802"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/samsunganalytices/NotesSamsungAnalytics;->insertLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onPdfTab(Z)V
    .locals 1

    if-eqz p1, :cond_0

    const-string p1, "510"

    const-string v0, "5822"

    goto :goto_0

    :cond_0
    const-string p1, "401"

    const-string v0, "3801"

    :goto_0
    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/nt/base/common/samsunganalytices/NotesSamsungAnalytics;->insertLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onSaveDefaultTemplate(II)V
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    if-gez p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0xc

    if-ge p2, p1, :cond_1

    add-int/lit8 p2, p2, 0x1

    :cond_1
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-direct {p0, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/util/sa/SAManager;->getOrdinalNumberPostfix(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_2
    const/4 p2, 0x3

    if-ne p1, p2, :cond_3

    const-string p1, "Image"

    goto :goto_1

    :cond_3
    const-string p1, "PDF"

    :goto_1
    const-string p2, "510"

    const-string v0, "5816"

    invoke-static {p2, v0, p1}, Lcom/samsung/android/support/senl/nt/base/common/samsunganalytices/NotesSamsungAnalytics;->insertLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onSelectTemplate(I)V
    .locals 2

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const-string p1, "Image default"

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    const-string p1, "Image downloaded"

    goto :goto_0

    :cond_1
    const/4 v0, 0x7

    if-ne p1, v0, :cond_2

    const-string p1, "PDF default"

    goto :goto_0

    :cond_2
    const-string p1, "PDF downloaded"

    :goto_0
    const-string v0, "401"

    const-string v1, "3810"

    invoke-static {v0, v1, p1}, Lcom/samsung/android/support/senl/nt/base/common/samsunganalytices/NotesSamsungAnalytics;->insertLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
