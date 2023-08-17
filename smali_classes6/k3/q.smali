.class public final synthetic Lk3/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/samsung/android/mcf/continuity/impl/ContinuityConnection;

.field public final synthetic b:Ljava/util/function/Consumer;

.field public final synthetic c:Ljava/net/Socket;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/mcf/continuity/impl/ContinuityConnection;Ljava/util/function/Consumer;Ljava/net/Socket;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lk3/q;->a:Lcom/samsung/android/mcf/continuity/impl/ContinuityConnection;

    iput-object p2, p0, Lk3/q;->b:Ljava/util/function/Consumer;

    iput-object p3, p0, Lk3/q;->c:Ljava/net/Socket;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lk3/q;->a:Lcom/samsung/android/mcf/continuity/impl/ContinuityConnection;

    iget-object v1, p0, Lk3/q;->b:Ljava/util/function/Consumer;

    iget-object v2, p0, Lk3/q;->c:Ljava/net/Socket;

    invoke-static {v0, v1, v2}, Lcom/samsung/android/mcf/continuity/impl/ContinuityConnection;->i(Lcom/samsung/android/mcf/continuity/impl/ContinuityConnection;Ljava/util/function/Consumer;Ljava/net/Socket;)V

    return-void
.end method
