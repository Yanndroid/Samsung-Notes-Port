.class Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;->returnLanguagePackDownloadListener(Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$LanguagePackDownloadListener;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;

.field public final synthetic val$listener:Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$LanguagePackDownloadListener;

.field public final synthetic val$status:I


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;ILcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$LanguagePackDownloadListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$2;->this$0:Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;

    iput p2, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$2;->val$status:I

    iput-object p3, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$2;->val$listener:Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$LanguagePackDownloadListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    invoke-static {}, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "returnLanguagePackDownloadListener : status = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$2;->val$status:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$2;->val$listener:Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$LanguagePackDownloadListener;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "returnLanguagePackDownloadListener : listener is null!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$2;->val$status:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$LanguagePackDownloadListener;->onComplete(I)V

    :goto_0
    return-void
.end method
