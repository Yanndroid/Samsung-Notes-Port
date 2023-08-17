.class Lcom/samsung/android/app/notes/receiver/CoeditPushReceiver$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/notes/sync/coedit/deletecore/CoeditDeleteLocalSharedSdocTask$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/notes/receiver/CoeditPushReceiver;->handleSpaceDeleted(Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/app/notes/receiver/CoeditPushReceiver;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/notes/receiver/CoeditPushReceiver;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/notes/receiver/CoeditPushReceiver$5;->this$0:Lcom/samsung/android/app/notes/receiver/CoeditPushReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDeleteLocalSharedSdocFinished()V
    .locals 2

    const-string v0, "CoeditPushReceiver"

    const-string v1, "[CS8-1] deleteLocalSharedSdoc() : onDeleteLocalSharedSdocFinished()"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainCoeditLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
