.class public final synthetic Lk3/h1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager$FileStatusListener;

.field public final synthetic b:I

.field public final synthetic c:D


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager$FileStatusListener;ID)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lk3/h1;->a:Lcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager$FileStatusListener;

    iput p2, p0, Lk3/h1;->b:I

    iput-wide p3, p0, Lk3/h1;->c:D

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lk3/h1;->a:Lcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager$FileStatusListener;

    iget v1, p0, Lk3/h1;->b:I

    iget-wide v2, p0, Lk3/h1;->c:D

    invoke-static {v0, v1, v2, v3}, Lcom/samsung/android/mcf/continuity/impl/ContinuitySessionFileManagerImpl$3;->a(Lcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager$FileStatusListener;ID)V

    return-void
.end method
