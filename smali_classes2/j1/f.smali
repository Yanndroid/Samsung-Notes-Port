.class public Lj1/f;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public e:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj1/f;->a:Ljava/lang/String;

    iput-object p2, p0, Lj1/f;->b:Ljava/lang/String;

    iput-object p3, p0, Lj1/f;->c:Ljava/lang/String;

    iput-object p4, p0, Lj1/f;->d:Ljava/util/List;

    iput p5, p0, Lj1/f;->e:I

    return-void
.end method

.method public static bridge synthetic a(Lj1/f;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lj1/f;->a:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public b()V
    .locals 8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "perform. title : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lj1/f;->c:Ljava/lang/String;

    invoke-static {v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->getEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UploadPage"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/MSLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lk1/b;->d()Lk1/b;

    move-result-object v2

    iget-object v3, p0, Lj1/f;->c:Ljava/lang/String;

    iget-object v4, p0, Lj1/f;->b:Ljava/lang/String;

    iget-object v5, p0, Lj1/f;->d:Ljava/util/List;

    iget v6, p0, Lj1/f;->e:I

    new-instance v7, Lj1/f$a;

    invoke-direct {v7, p0}, Lj1/f$a;-><init>(Lj1/f;)V

    invoke-virtual/range {v2 .. v7}, Lk1/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILl1/a;)V

    return-void
.end method
