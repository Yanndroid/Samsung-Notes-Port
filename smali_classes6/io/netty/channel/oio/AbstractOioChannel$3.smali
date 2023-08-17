.class Lio/netty/channel/oio/AbstractOioChannel$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/netty/channel/oio/AbstractOioChannel;->setReadPending(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lio/netty/channel/oio/AbstractOioChannel;

.field public final synthetic val$readPending:Z


# direct methods
.method public constructor <init>(Lio/netty/channel/oio/AbstractOioChannel;Z)V
    .locals 0

    iput-object p1, p0, Lio/netty/channel/oio/AbstractOioChannel$3;->this$0:Lio/netty/channel/oio/AbstractOioChannel;

    iput-boolean p2, p0, Lio/netty/channel/oio/AbstractOioChannel$3;->val$readPending:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lio/netty/channel/oio/AbstractOioChannel$3;->this$0:Lio/netty/channel/oio/AbstractOioChannel;

    iget-boolean v1, p0, Lio/netty/channel/oio/AbstractOioChannel$3;->val$readPending:Z

    iput-boolean v1, v0, Lio/netty/channel/oio/AbstractOioChannel;->readPending:Z

    return-void
.end method
