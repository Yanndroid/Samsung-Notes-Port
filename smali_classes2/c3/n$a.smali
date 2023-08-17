.class public Lc3/n$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc3/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field public static final a:Lc3/n;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lc3/n;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lc3/n;-><init>(Lc3/o;)V

    sput-object v0, Lc3/n$a;->a:Lc3/n;

    return-void
.end method

.method public static bridge synthetic a()Lc3/n;
    .locals 1

    sget-object v0, Lc3/n$a;->a:Lc3/n;

    return-object v0
.end method
