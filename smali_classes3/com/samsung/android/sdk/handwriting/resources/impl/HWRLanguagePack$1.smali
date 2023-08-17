.class Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePack$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/sdk/handwriting/resources/impl/listener/HWRDeleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePack;->delete(Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguagePackInterface$OnDeleteListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePack;

.field public final synthetic val$listener:Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguagePackInterface$OnDeleteListener;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePack;Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguagePackInterface$OnDeleteListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePack$1;->this$0:Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePack;

    iput-object p2, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePack$1;->val$listener:Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguagePackInterface$OnDeleteListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(ZLjava/lang/String;)V
    .locals 0

    iget-object p2, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePack$1;->val$listener:Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguagePackInterface$OnDeleteListener;

    if-eqz p2, :cond_0

    xor-int/lit8 p1, p1, 0x1

    invoke-interface {p2, p1}, Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguagePackInterface$OnDeleteListener;->onComplete(I)V

    :cond_0
    return-void
.end method
