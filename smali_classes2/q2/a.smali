.class public Lq2/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:La2/g$a;

.field public b:Landroid/content/Context;


# direct methods
.method public constructor <init>(La2/g$a;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lq2/a;->a:La2/g$a;

    iput-object p2, p0, Lq2/a;->b:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public a(Lcom/samsung/android/app/notes/sync/network/networkutils/j;)V
    .locals 1

    iget-object v0, p0, Lq2/a;->b:Landroid/content/Context;

    invoke-static {v0, p1}, La2/g;->f(Landroid/content/Context;Lcom/samsung/android/app/notes/sync/network/networkutils/j;)V

    return-void
.end method
