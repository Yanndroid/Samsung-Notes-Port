.class public final synthetic Lk3/s0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:Lcom/samsung/android/mcf/continuity/impl/ContinuitySession;

.field public final synthetic b:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/mcf/continuity/impl/ContinuitySession;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lk3/s0;->a:Lcom/samsung/android/mcf/continuity/impl/ContinuitySession;

    iput-object p2, p0, Lk3/s0;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lk3/s0;->a:Lcom/samsung/android/mcf/continuity/impl/ContinuitySession;

    iget-object v1, p0, Lk3/s0;->b:Ljava/lang/String;

    check-cast p1, Ljava/lang/Boolean;

    invoke-static {v0, v1, p1}, Lcom/samsung/android/mcf/continuity/impl/ContinuitySession;->j(Lcom/samsung/android/mcf/continuity/impl/ContinuitySession;Ljava/lang/String;Ljava/lang/Boolean;)V

    return-void
.end method
