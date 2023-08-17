.class public Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphItem;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphItem$RequestType;
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:J

.field public final e:J

.field public final f:Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphItem$RequestType;

.field public final g:I

.field public h:J


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLcom/samsung/android/app/notes/sync/microsoft/graph/GraphItem$RequestType;IJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphItem;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphItem;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphItem;->c:Ljava/lang/String;

    iput-wide p4, p0, Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphItem;->d:J

    iput-wide p6, p0, Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphItem;->e:J

    iput-object p8, p0, Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphItem;->f:Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphItem$RequestType;

    iput p9, p0, Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphItem;->g:I

    iput-wide p10, p0, Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphItem;->h:J

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphItem;->c:Ljava/lang/String;

    return-object v0
.end method

.method public b()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphItem;->d:J

    return-wide v0
.end method

.method public c()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphItem;->g:I

    return v0
.end method

.method public d()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphItem;->e:J

    return-wide v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphItem;->b:Ljava/lang/String;

    return-object v0
.end method

.method public f()Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphItem$RequestType;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphItem;->f:Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphItem$RequestType;

    return-object v0
.end method

.method public g()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphItem;->h:J

    return-wide v0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphItem;->a:Ljava/lang/String;

    return-object v0
.end method
