.class public Lk0/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static d:I = 0x2


# instance fields
.field public a:I

.field public b:Lk0/a;

.field public c:Lk0/c;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lk0/b;->a:I

    new-instance v0, Lk0/c;

    invoke-direct {v0}, Lk0/c;-><init>()V

    iput-object v0, p0, Lk0/b;->c:Lk0/c;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lk0/b;->a:I

    new-instance v0, Lk0/a;

    invoke-direct {v0, p1}, Lk0/a;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lk0/b;->b:Lk0/a;

    new-instance p1, Lk0/c;

    invoke-direct {p1}, Lk0/c;-><init>()V

    iput-object p1, p0, Lk0/b;->c:Lk0/c;

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 0

    iput p1, p0, Lk0/b;->a:I

    return-void
.end method
