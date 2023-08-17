.class public final synthetic Lk3/f0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/samsung/android/mcf/continuity/impl/ContinuityServerSocket;

.field public final synthetic b:Ljava/util/function/Consumer;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/mcf/continuity/impl/ContinuityServerSocket;Ljava/util/function/Consumer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lk3/f0;->a:Lcom/samsung/android/mcf/continuity/impl/ContinuityServerSocket;

    iput-object p2, p0, Lk3/f0;->b:Ljava/util/function/Consumer;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lk3/f0;->a:Lcom/samsung/android/mcf/continuity/impl/ContinuityServerSocket;

    iget-object v1, p0, Lk3/f0;->b:Ljava/util/function/Consumer;

    invoke-static {v0, v1}, Lcom/samsung/android/mcf/continuity/impl/ContinuityServerSocket;->a(Lcom/samsung/android/mcf/continuity/impl/ContinuityServerSocket;Ljava/util/function/Consumer;)V

    return-void
.end method
