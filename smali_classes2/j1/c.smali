.class public Lj1/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj1/c;->a:Ljava/lang/String;

    iput-object p2, p0, Lj1/c;->b:Ljava/lang/String;

    return-void
.end method

.method public static bridge synthetic a(Lj1/c;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lj1/c;->a:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic b(Lj1/c;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lj1/c;->b:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public c()V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "perform. uuid : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lj1/c;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "connectedNotesId : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lj1/c;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DeleteNote"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/MSLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lk1/a;->f()Lk1/a;

    move-result-object v0

    iget-object v1, p0, Lj1/c;->a:Ljava/lang/String;

    iget-object v2, p0, Lj1/c;->b:Ljava/lang/String;

    new-instance v3, Lj1/c$a;

    invoke-direct {v3, p0}, Lj1/c$a;-><init>(Lj1/c;)V

    invoke-virtual {v0, v1, v2, v3}, Lk1/a;->d(Ljava/lang/String;Ljava/lang/String;Ll1/a;)V

    return-void
.end method
