.class public final synthetic Lk3/g0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic a:Ljava/net/Socket;


# direct methods
.method public synthetic constructor <init>(Ljava/net/Socket;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lk3/g0;->a:Ljava/net/Socket;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lk3/g0;->a:Ljava/net/Socket;

    invoke-static {v0}, Lcom/samsung/android/mcf/continuity/impl/ContinuityServerSocket;->b(Ljava/net/Socket;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
