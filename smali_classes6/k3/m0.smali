.class public final synthetic Lk3/m0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/samsung/android/mcf/continuity/impl/ContinuitySession;

.field public final synthetic b:Lcom/samsung/android/mcf/continuity/api/ContinuityMessageManager$MessageListener;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/mcf/continuity/impl/ContinuitySession;Lcom/samsung/android/mcf/continuity/api/ContinuityMessageManager$MessageListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lk3/m0;->a:Lcom/samsung/android/mcf/continuity/impl/ContinuitySession;

    iput-object p2, p0, Lk3/m0;->b:Lcom/samsung/android/mcf/continuity/api/ContinuityMessageManager$MessageListener;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lk3/m0;->a:Lcom/samsung/android/mcf/continuity/impl/ContinuitySession;

    iget-object v1, p0, Lk3/m0;->b:Lcom/samsung/android/mcf/continuity/api/ContinuityMessageManager$MessageListener;

    invoke-static {v0, v1}, Lcom/samsung/android/mcf/continuity/impl/ContinuitySession;->i(Lcom/samsung/android/mcf/continuity/impl/ContinuitySession;Lcom/samsung/android/mcf/continuity/api/ContinuityMessageManager$MessageListener;)V

    return-void
.end method
