.class public final synthetic Lk3/q0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:Lcom/samsung/android/mcf/continuity/impl/ContinuitySession;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/mcf/continuity/impl/ContinuitySession;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lk3/q0;->a:Lcom/samsung/android/mcf/continuity/impl/ContinuitySession;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lk3/q0;->a:Lcom/samsung/android/mcf/continuity/impl/ContinuitySession;

    check-cast p1, Ljava/net/Socket;

    invoke-static {v0, p1}, Lcom/samsung/android/mcf/continuity/impl/ContinuitySession;->a(Lcom/samsung/android/mcf/continuity/impl/ContinuitySession;Ljava/net/Socket;)V

    return-void
.end method
