.class Lcom/samsung/vsf/recognition/SamsungRecognizer$SVoiceWrapper$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/vsf/recognition/SamsungRecognizer$SVoiceWrapper;->resultASR(ILjava/util/Properties;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/samsung/vsf/recognition/SamsungRecognizer$SVoiceWrapper;


# direct methods
.method public constructor <init>(Lcom/samsung/vsf/recognition/SamsungRecognizer$SVoiceWrapper;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/vsf/recognition/SamsungRecognizer$SVoiceWrapper$1;->this$1:Lcom/samsung/vsf/recognition/SamsungRecognizer$SVoiceWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/vsf/recognition/SamsungRecognizer$SVoiceWrapper$1;->this$1:Lcom/samsung/vsf/recognition/SamsungRecognizer$SVoiceWrapper;

    invoke-virtual {v0}, Lcom/samsung/vsf/recognition/SamsungRecognizer$SVoiceWrapper;->close()Z

    return-void
.end method
