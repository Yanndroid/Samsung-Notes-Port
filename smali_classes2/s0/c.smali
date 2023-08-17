.class public Ls0/c;
.super Ljava/lang/Exception;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:I

.field public c:Lcom/samsung/android/sdk/pen/document/SpenUnsupportedVersionException;

.field public d:Lcom/samsung/android/sdk/pen/document/SpenUnsupportedTypeException;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    iput p1, p0, Ls0/c;->a:I

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    iput p1, p0, Ls0/c;->a:I

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p2, p3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    iput p1, p0, Ls0/c;->a:I

    return-void
.end method

.method public constructor <init>(ILjava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    iput p1, p0, Ls0/c;->a:I

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Ls0/c;->a:I

    return v0
.end method

.method public b()Lcom/samsung/android/sdk/pen/document/SpenUnsupportedTypeException;
    .locals 1

    iget-object v0, p0, Ls0/c;->d:Lcom/samsung/android/sdk/pen/document/SpenUnsupportedTypeException;

    return-object v0
.end method

.method public c()Lcom/samsung/android/sdk/pen/document/SpenUnsupportedVersionException;
    .locals 1

    iget-object v0, p0, Ls0/c;->c:Lcom/samsung/android/sdk/pen/document/SpenUnsupportedVersionException;

    return-object v0
.end method

.method public d()I
    .locals 1

    iget v0, p0, Ls0/c;->b:I

    return v0
.end method

.method public e(Lcom/samsung/android/sdk/pen/document/SpenUnsupportedTypeException;)V
    .locals 0

    iput-object p1, p0, Ls0/c;->d:Lcom/samsung/android/sdk/pen/document/SpenUnsupportedTypeException;

    return-void
.end method

.method public f(Lcom/samsung/android/sdk/pen/document/SpenUnsupportedVersionException;)V
    .locals 0

    iput-object p1, p0, Ls0/c;->c:Lcom/samsung/android/sdk/pen/document/SpenUnsupportedVersionException;

    return-void
.end method

.method public g(I)V
    .locals 0

    iput p1, p0, Ls0/c;->b:I

    return-void
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

    iget v1, p0, Ls0/c;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
