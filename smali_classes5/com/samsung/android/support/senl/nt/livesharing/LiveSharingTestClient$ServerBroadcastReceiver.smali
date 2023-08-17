.class public Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingTestClient$ServerBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingTestClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ServerBroadcastReceiver"
.end annotation


# instance fields
.field public mMethodDelegate:Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingTestClient$ServerMethodDelegate;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingTestClient$ServerMethodDelegate;)V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingTestClient$ServerBroadcastReceiver;->mMethodDelegate:Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingTestClient$ServerMethodDelegate;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "method"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/livesharing/TestConstant$ServerMethod;->valueOf(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/livesharing/TestConstant$ServerMethod;

    move-result-object p1

    sget-object v0, Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingTestClient$1;->$SwitchMap$com$samsung$android$support$senl$nt$livesharing$TestConstant$ServerMethod:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 p2, 0x5

    if-eq p1, p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingTestClient$ServerBroadcastReceiver;->mMethodDelegate:Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingTestClient$ServerMethodDelegate;

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingTestClient$ServerMethodDelegate;->onQueryCoDoingState()V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingTestClient$ServerBroadcastReceiver;->mMethodDelegate:Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingTestClient$ServerMethodDelegate;

    const-string v0, "end_reason"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/google/android/livesharing/MeetingDisconnectHandler$EndReason;->valueOf(Ljava/lang/String;)Lcom/google/android/livesharing/MeetingDisconnectHandler$EndReason;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingTestClient$ServerMethodDelegate;->onEndConnection(Lcom/google/android/livesharing/MeetingDisconnectHandler$EndReason;)V

    goto :goto_0

    :cond_2
    new-instance p1, Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingData;

    const-string v0, "data"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingData;-><init>([B)V

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingTestClient$ServerBroadcastReceiver;->mMethodDelegate:Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingTestClient$ServerMethodDelegate;

    invoke-interface {p2, p1}, Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingTestClient$ServerMethodDelegate;->onStateChanged(Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingData;)V

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingTestClient$ServerBroadcastReceiver;->mMethodDelegate:Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingTestClient$ServerMethodDelegate;

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingTestClient$ServerMethodDelegate;->onFailure()V

    goto :goto_0

    :cond_4
    const-string p1, "meeting_state"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-static {}, Lcom/google/android/livesharing/LiveSharingMeetingInfo;->builder()Lcom/google/android/livesharing/LiveSharingMeetingInfo$Builder;

    move-result-object p2

    const-string v0, "test"

    invoke-virtual {p2, v0}, Lcom/google/android/livesharing/LiveSharingMeetingInfo$Builder;->setMeetingCode(Ljava/lang/String;)Lcom/google/android/livesharing/LiveSharingMeetingInfo$Builder;

    move-result-object p2

    invoke-static {p1}, Lcom/google/android/livesharing/LiveSharingMeetingInfo$MeetingStatus;->valueOf(Ljava/lang/String;)Lcom/google/android/livesharing/LiveSharingMeetingInfo$MeetingStatus;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/google/android/livesharing/LiveSharingMeetingInfo$Builder;->setMeetingStatus(Lcom/google/android/livesharing/LiveSharingMeetingInfo$MeetingStatus;)Lcom/google/android/livesharing/LiveSharingMeetingInfo$Builder;

    move-result-object p1

    const-string p2, "http://www.naver.com"

    invoke-virtual {p1, p2}, Lcom/google/android/livesharing/LiveSharingMeetingInfo$Builder;->setMeetingUrl(Ljava/lang/String;)Lcom/google/android/livesharing/LiveSharingMeetingInfo$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/livesharing/LiveSharingMeetingInfo$Builder;->build()Lcom/google/android/livesharing/LiveSharingMeetingInfo;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingTestClient$ServerBroadcastReceiver;->mMethodDelegate:Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingTestClient$ServerMethodDelegate;

    invoke-interface {p2, p1}, Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingTestClient$ServerMethodDelegate;->onSuccess(Ljava/lang/Object;)V

    goto :goto_0

    :cond_5
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingTestClient$ServerBroadcastReceiver;->mMethodDelegate:Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingTestClient$ServerMethodDelegate;

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingTestClient$ServerMethodDelegate;->onSuccess(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
