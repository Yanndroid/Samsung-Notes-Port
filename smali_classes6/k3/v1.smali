.class public final synthetic Lk3/v1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/samsung/android/mcf/continuity/api/ContinuityMessageManager$MessageListener;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:[B


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/mcf/continuity/api/ContinuityMessageManager$MessageListener;Ljava/lang/String;[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lk3/v1;->a:Lcom/samsung/android/mcf/continuity/api/ContinuityMessageManager$MessageListener;

    iput-object p2, p0, Lk3/v1;->b:Ljava/lang/String;

    iput-object p3, p0, Lk3/v1;->c:[B

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lk3/v1;->a:Lcom/samsung/android/mcf/continuity/api/ContinuityMessageManager$MessageListener;

    iget-object v1, p0, Lk3/v1;->b:Ljava/lang/String;

    iget-object v2, p0, Lk3/v1;->c:[B

    invoke-static {v0, v1, v2}, Lcom/samsung/android/mcf/continuity/impl/ContinuitySimpleMessageManagerImpl$1;->a(Lcom/samsung/android/mcf/continuity/api/ContinuityMessageManager$MessageListener;Ljava/lang/String;[B)V

    return-void
.end method
