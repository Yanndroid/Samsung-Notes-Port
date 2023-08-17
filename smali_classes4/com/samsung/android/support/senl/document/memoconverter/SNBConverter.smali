.class public Lcom/samsung/android/support/senl/document/memoconverter/SNBConverter;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "SNBConverter"


# instance fields
.field private mSnoteConverter:Lcom/samsung/android/support/senl/document/memoconverter/core/SNoteConverter;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/senl/document/memoconverter/SNBConverter;->mSnoteConverter:Lcom/samsung/android/support/senl/document/memoconverter/core/SNoteConverter;

    new-instance v0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNoteConverter;

    invoke-direct {v0, p1}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNoteConverter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/document/memoconverter/SNBConverter;->mSnoteConverter:Lcom/samsung/android/support/senl/document/memoconverter/core/SNoteConverter;

    const-string p1, "SNBConverter"

    const-string v0, "SNBConverter()"

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/document/delegator/DocumentLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public convertToSDoc(Ljava/lang/String;I)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/document/memoconverter/SNBConverter;->mSnoteConverter:Lcom/samsung/android/support/senl/document/memoconverter/core/SNoteConverter;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNoteConverter;->convertSNBToSDoc(Ljava/lang/String;I)Z

    move-result p1

    return p1
.end method

.method public convertToSDocFile(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/document/memoconverter/SNBConverter;->mSnoteConverter:Lcom/samsung/android/support/senl/document/memoconverter/core/SNoteConverter;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNoteConverter;->convertSNBToSDocFile(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method

.method public convertToSpdFile(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/document/memoconverter/SNBConverter;->mSnoteConverter:Lcom/samsung/android/support/senl/document/memoconverter/core/SNoteConverter;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNoteConverter;->snbTospd(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public isAlreadyConverted(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/document/memoconverter/SNBConverter;->mSnoteConverter:Lcom/samsung/android/support/senl/document/memoconverter/core/SNoteConverter;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNoteConverter;->isAlreadyConverted(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public isLocked(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/document/memoconverter/SNBConverter;->mSnoteConverter:Lcom/samsung/android/support/senl/document/memoconverter/core/SNoteConverter;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNoteConverter;->isSNBLocked(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public isRightPassword(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/document/memoconverter/SNBConverter;->mSnoteConverter:Lcom/samsung/android/support/senl/document/memoconverter/core/SNoteConverter;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNoteConverter;->isRightSnbPassword(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public setFinishListener(Lcom/samsung/android/support/senl/document/memoconverter/FinishListener;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/document/memoconverter/SNBConverter;->mSnoteConverter:Lcom/samsung/android/support/senl/document/memoconverter/core/SNoteConverter;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNoteConverter;->setFinishListener(Lcom/samsung/android/support/senl/document/memoconverter/FinishListener;)V

    return-void
.end method

.method public unlockSNB(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/document/memoconverter/SNBConverter;->mSnoteConverter:Lcom/samsung/android/support/senl/document/memoconverter/core/SNoteConverter;

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNoteConverter;->unlockSNB(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method
