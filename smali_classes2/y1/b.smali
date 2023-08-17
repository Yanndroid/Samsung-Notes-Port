.class public Ly1/b;
.super Ljava/lang/Exception;
.source "SourceFile"


# instance fields
.field public a:Lcom/samsung/android/app/notes/sync/constants/ShareConstants$ResultCode;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/notes/sync/constants/ShareConstants$ResultCode;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Ly1/b;->a:Lcom/samsung/android/app/notes/sync/constants/ShareConstants$ResultCode;

    return-void
.end method


# virtual methods
.method public a()Lcom/samsung/android/app/notes/sync/constants/ShareConstants$ResultCode;
    .locals 1

    iget-object v0, p0, Ly1/b;->a:Lcom/samsung/android/app/notes/sync/constants/ShareConstants$ResultCode;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", eCode : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ly1/b;->a:Lcom/samsung/android/app/notes/sync/constants/ShareConstants$ResultCode;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
