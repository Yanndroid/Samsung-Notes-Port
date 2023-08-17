.class public final synthetic Lk3/o0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiFunction;


# instance fields
.field public final synthetic a:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lk3/o0;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lk3/o0;->a:Ljava/lang/String;

    check-cast p1, Ljava/lang/String;

    check-cast p2, Lcom/samsung/android/mcf/continuity/api/ContinuitySessionManager$PeerStatusListener;

    invoke-static {v0, p1, p2}, Lcom/samsung/android/mcf/continuity/impl/ContinuitySession;->m(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/mcf/continuity/api/ContinuitySessionManager$PeerStatusListener;)Lcom/samsung/android/mcf/continuity/api/ContinuitySessionManager$PeerStatusListener;

    move-result-object p1

    return-object p1
.end method
