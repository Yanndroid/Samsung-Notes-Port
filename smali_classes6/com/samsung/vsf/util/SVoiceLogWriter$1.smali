.class Lcom/samsung/vsf/util/SVoiceLogWriter$1;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/vsf/util/SVoiceLogWriter;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/vsf/util/SVoiceLogWriter;


# direct methods
.method public constructor <init>(Lcom/samsung/vsf/util/SVoiceLogWriter;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/vsf/util/SVoiceLogWriter$1;->this$0:Lcom/samsung/vsf/util/SVoiceLogWriter;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p1, p0, Lcom/samsung/vsf/util/SVoiceLogWriter$1;->this$0:Lcom/samsung/vsf/util/SVoiceLogWriter;

    invoke-static {p1}, Lcom/samsung/vsf/util/SVoiceLogWriter;->access$600(Lcom/samsung/vsf/util/SVoiceLogWriter;)V

    goto :goto_0

    :pswitch_1
    iget-object p1, p0, Lcom/samsung/vsf/util/SVoiceLogWriter$1;->this$0:Lcom/samsung/vsf/util/SVoiceLogWriter;

    invoke-static {p1}, Lcom/samsung/vsf/util/SVoiceLogWriter;->access$500(Lcom/samsung/vsf/util/SVoiceLogWriter;)V

    goto :goto_0

    :pswitch_2
    iget-object p1, p0, Lcom/samsung/vsf/util/SVoiceLogWriter$1;->this$0:Lcom/samsung/vsf/util/SVoiceLogWriter;

    invoke-static {p1}, Lcom/samsung/vsf/util/SVoiceLogWriter;->access$400(Lcom/samsung/vsf/util/SVoiceLogWriter;)V

    goto :goto_0

    :pswitch_3
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/vsf/util/SVoiceLogWriter$1;->this$0:Lcom/samsung/vsf/util/SVoiceLogWriter;

    invoke-static {v0, p1}, Lcom/samsung/vsf/util/SVoiceLogWriter;->access$300(Lcom/samsung/vsf/util/SVoiceLogWriter;Landroid/os/Bundle;)V

    goto :goto_0

    :pswitch_4
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/vsf/util/SVoiceLogWriter$1;->this$0:Lcom/samsung/vsf/util/SVoiceLogWriter;

    invoke-static {v0, p1}, Lcom/samsung/vsf/util/SVoiceLogWriter;->access$200(Lcom/samsung/vsf/util/SVoiceLogWriter;Landroid/os/Bundle;)V

    goto :goto_0

    :pswitch_5
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/vsf/util/SVoiceLogWriter$1;->this$0:Lcom/samsung/vsf/util/SVoiceLogWriter;

    invoke-static {v0, p1}, Lcom/samsung/vsf/util/SVoiceLogWriter;->access$100(Lcom/samsung/vsf/util/SVoiceLogWriter;Landroid/os/Bundle;)V

    goto :goto_0

    :pswitch_6
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/vsf/util/SVoiceLogWriter$1;->this$0:Lcom/samsung/vsf/util/SVoiceLogWriter;

    invoke-static {v0, p1}, Lcom/samsung/vsf/util/SVoiceLogWriter;->access$000(Lcom/samsung/vsf/util/SVoiceLogWriter;Landroid/os/Bundle;)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
