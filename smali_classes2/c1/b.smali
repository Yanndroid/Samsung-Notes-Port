.class public Lc1/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lcom/samsung/android/app/notes/sync/infos/ModelType;

.field public b:I

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/notes/sync/infos/ModelType;ILjava/lang/String;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc1/b;->a:Lcom/samsung/android/app/notes/sync/infos/ModelType;

    iput p2, p0, Lc1/b;->b:I

    iput-object p3, p0, Lc1/b;->c:Ljava/lang/String;

    iput-object p4, p0, Lc1/b;->d:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lc1/b;->b:I

    return v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lc1/b;->c:Ljava/lang/String;

    return-object v0
.end method

.method public c()Lcom/samsung/android/app/notes/sync/infos/ModelType;
    .locals 1

    iget-object v0, p0, Lc1/b;->a:Lcom/samsung/android/app/notes/sync/infos/ModelType;

    return-object v0
.end method
