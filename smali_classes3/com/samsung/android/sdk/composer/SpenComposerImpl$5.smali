.class Lcom/samsung/android/sdk/composer/SpenComposerImpl$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/sdk/composer/SpenComposerImpl;->onSetFrontBufferRenderingEnable(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/sdk/composer/SpenComposerImpl;

.field public final synthetic val$enable:Z


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/composer/SpenComposerImpl;Z)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl$5;->this$0:Lcom/samsung/android/sdk/composer/SpenComposerImpl;

    iput-boolean p2, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl$5;->val$enable:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl$5;->this$0:Lcom/samsung/android/sdk/composer/SpenComposerImpl;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->getNoteWritingViewManager()Lcom/samsung/android/sdk/composer/writing/SpenNoteWritingViewManager;

    move-result-object v0

    iget-boolean v1, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl$5;->val$enable:Z

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/composer/writing/SpenNoteWritingViewManager;->setFrontBufferRenderingEnabled(Z)Z

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl$5;->this$0:Lcom/samsung/android/sdk/composer/SpenComposerImpl;

    iget-boolean v1, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl$5;->val$enable:Z

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->setFrontBufferRenderingEnabledInEWP(Z)Z

    return-void
.end method
