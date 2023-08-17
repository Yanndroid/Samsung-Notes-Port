.class Lcom/samsung/android/sdk/handwriting/resources/HwrLanguageManager$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguageManagerInterface$OnUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/sdk/handwriting/resources/HwrLanguageManager;->update(Lcom/samsung/android/sdk/handwriting/resources/HwrLanguageManager$OnUpdateListener;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/sdk/handwriting/resources/HwrLanguageManager;

.field public final synthetic val$listener:Lcom/samsung/android/sdk/handwriting/resources/HwrLanguageManager$OnUpdateListener;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/handwriting/resources/HwrLanguageManager;Lcom/samsung/android/sdk/handwriting/resources/HwrLanguageManager$OnUpdateListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguageManager$1;->this$0:Lcom/samsung/android/sdk/handwriting/resources/HwrLanguageManager;

    iput-object p2, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguageManager$1;->val$listener:Lcom/samsung/android/sdk/handwriting/resources/HwrLanguageManager$OnUpdateListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguageManager$1;->val$listener:Lcom/samsung/android/sdk/handwriting/resources/HwrLanguageManager$OnUpdateListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguageManager$OnUpdateListener;->onComplete(I)V

    :cond_0
    return-void
.end method
