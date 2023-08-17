.class Lcom/samsung/vsf/recognition/SamsungRecognizer$SVoiceObjectDestroyable;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/vsf/recognition/SamsungRecognizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SVoiceObjectDestroyable"
.end annotation


# instance fields
.field private mId:I

.field private mTempClient:Lcom/sec/svoice/api/SVoice;

.field public final synthetic this$0:Lcom/samsung/vsf/recognition/SamsungRecognizer;


# direct methods
.method public constructor <init>(Lcom/samsung/vsf/recognition/SamsungRecognizer;Lcom/sec/svoice/api/SVoice;I)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/vsf/recognition/SamsungRecognizer$SVoiceObjectDestroyable;->this$0:Lcom/samsung/vsf/recognition/SamsungRecognizer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/samsung/vsf/recognition/SamsungRecognizer$SVoiceObjectDestroyable;->mTempClient:Lcom/sec/svoice/api/SVoice;

    iput p3, p0, Lcom/samsung/vsf/recognition/SamsungRecognizer$SVoiceObjectDestroyable;->mId:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/vsf/recognition/SamsungRecognizer$SVoiceObjectDestroyable;->mTempClient:Lcom/sec/svoice/api/SVoice;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SamsungRecognizer@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/vsf/recognition/SamsungRecognizer$SVoiceObjectDestroyable;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/vsf/recognition/SamsungRecognizer$SVoiceObjectDestroyable;->mTempClient:Lcom/sec/svoice/api/SVoice;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " destroying"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "tickcount"

    invoke-static {v1, v0}, Lcom/samsung/vsf/util/SVoiceLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/vsf/recognition/SamsungRecognizer$SVoiceObjectDestroyable;->mTempClient:Lcom/sec/svoice/api/SVoice;

    invoke-virtual {v0}, Lcom/sec/svoice/api/SVoice;->destroy()Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/vsf/recognition/SamsungRecognizer$SVoiceObjectDestroyable;->mTempClient:Lcom/sec/svoice/api/SVoice;

    :cond_0
    return-void
.end method
