.class public final synthetic Lk3/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/samsung/android/mcf/continuity/impl/ContinuityConnection;

.field public final synthetic b:Ljava/net/Socket;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/mcf/continuity/impl/ContinuityConnection;Ljava/net/Socket;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lk3/n;->a:Lcom/samsung/android/mcf/continuity/impl/ContinuityConnection;

    iput-object p2, p0, Lk3/n;->b:Ljava/net/Socket;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lk3/n;->a:Lcom/samsung/android/mcf/continuity/impl/ContinuityConnection;

    iget-object v1, p0, Lk3/n;->b:Ljava/net/Socket;

    invoke-static {v0, v1}, Lcom/samsung/android/mcf/continuity/impl/ContinuityConnection;->l(Lcom/samsung/android/mcf/continuity/impl/ContinuityConnection;Ljava/net/Socket;)V

    return-void
.end method
