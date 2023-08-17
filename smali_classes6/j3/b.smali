.class public final synthetic Lj3/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/net/Socket;


# direct methods
.method public synthetic constructor <init>(Ljava/net/Socket;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj3/b;->a:Ljava/net/Socket;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lj3/b;->a:Ljava/net/Socket;

    invoke-static {v0}, Lcom/samsung/android/mcf/continuity/common/NetworkUtil;->a(Ljava/net/Socket;)V

    return-void
.end method
