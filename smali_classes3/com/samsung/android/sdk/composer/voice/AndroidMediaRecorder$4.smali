.class Lcom/samsung/android/sdk/composer/voice/AndroidMediaRecorder$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/sdk/composer/voice/AndroidMediaRecorder;->updateTimeOnUIThread()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/sdk/composer/voice/AndroidMediaRecorder;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/composer/voice/AndroidMediaRecorder;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/composer/voice/AndroidMediaRecorder$4;->this$0:Lcom/samsung/android/sdk/composer/voice/AndroidMediaRecorder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/voice/AndroidMediaRecorder$4;->this$0:Lcom/samsung/android/sdk/composer/voice/AndroidMediaRecorder;

    invoke-static {v0}, Lcom/samsung/android/sdk/composer/voice/AndroidMediaRecorder;->access$1000(Lcom/samsung/android/sdk/composer/voice/AndroidMediaRecorder;)V

    return-void
.end method
