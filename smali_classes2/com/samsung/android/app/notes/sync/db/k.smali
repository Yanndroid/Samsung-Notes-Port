.class public Lcom/samsung/android/app/notes/sync/db/k;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/notes/sync/db/k;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/app/notes/sync/db/k;->b:Ljava/lang/String;

    iput p3, p0, Lcom/samsung/android/app/notes/sync/db/k;->c:I

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/app/notes/sync/db/k;->c:I

    return v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/db/k;->a:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/db/k;->b:Ljava/lang/String;

    return-object v0
.end method
