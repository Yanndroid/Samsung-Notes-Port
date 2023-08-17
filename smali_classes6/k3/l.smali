.class public final synthetic Lk3/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/samsung/android/mcf/continuity/impl/ContinuityConnection;

.field public final synthetic b:I

.field public final synthetic c:Lcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager$FileStatusListener;

.field public final synthetic d:[B

.field public final synthetic e:Ljava/io/File;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/mcf/continuity/impl/ContinuityConnection;ILcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager$FileStatusListener;[BLjava/io/File;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lk3/l;->a:Lcom/samsung/android/mcf/continuity/impl/ContinuityConnection;

    iput p2, p0, Lk3/l;->b:I

    iput-object p3, p0, Lk3/l;->c:Lcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager$FileStatusListener;

    iput-object p4, p0, Lk3/l;->d:[B

    iput-object p5, p0, Lk3/l;->e:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lk3/l;->a:Lcom/samsung/android/mcf/continuity/impl/ContinuityConnection;

    iget v1, p0, Lk3/l;->b:I

    iget-object v2, p0, Lk3/l;->c:Lcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager$FileStatusListener;

    iget-object v3, p0, Lk3/l;->d:[B

    iget-object v4, p0, Lk3/l;->e:Ljava/io/File;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/samsung/android/mcf/continuity/impl/ContinuityConnection;->j(Lcom/samsung/android/mcf/continuity/impl/ContinuityConnection;ILcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager$FileStatusListener;[BLjava/io/File;)V

    return-void
.end method
