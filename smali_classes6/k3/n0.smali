.class public final synthetic Lk3/n0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiFunction;


# instance fields
.field public final synthetic a:Lcom/samsung/android/mcf/continuity/impl/ContinuitySession;

.field public final synthetic b:Ljava/net/Socket;

.field public final synthetic c:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/mcf/continuity/impl/ContinuitySession;Ljava/net/Socket;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lk3/n0;->a:Lcom/samsung/android/mcf/continuity/impl/ContinuitySession;

    iput-object p2, p0, Lk3/n0;->b:Ljava/net/Socket;

    iput-object p3, p0, Lk3/n0;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lk3/n0;->a:Lcom/samsung/android/mcf/continuity/impl/ContinuitySession;

    iget-object v1, p0, Lk3/n0;->b:Ljava/net/Socket;

    iget-object v2, p0, Lk3/n0;->c:Ljava/lang/String;

    check-cast p1, Ljava/lang/String;

    check-cast p2, Lcom/samsung/android/mcf/continuity/impl/ContinuityConnection;

    invoke-static {v0, v1, v2, p1, p2}, Lcom/samsung/android/mcf/continuity/impl/ContinuitySession;->k(Lcom/samsung/android/mcf/continuity/impl/ContinuitySession;Ljava/net/Socket;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/mcf/continuity/impl/ContinuityConnection;)Lcom/samsung/android/mcf/continuity/impl/ContinuityConnection;

    move-result-object p1

    return-object p1
.end method
