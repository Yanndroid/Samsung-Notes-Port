.class Luk/ac/ed/ph/snuggletex/SnugglePackage$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Luk/ac/ed/ph/snuggletex/SnugglePackage$LineHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Luk/ac/ed/ph/snuggletex/SnugglePackage;->loadMathCharacterAliases(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Luk/ac/ed/ph/snuggletex/SnugglePackage;


# direct methods
.method public constructor <init>(Luk/ac/ed/ph/snuggletex/SnugglePackage;)V
    .locals 0

    iput-object p1, p0, Luk/ac/ed/ph/snuggletex/SnugglePackage$5;->this$0:Luk/ac/ed/ph/snuggletex/SnugglePackage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleLine(Ljava/lang/String;)V
    .locals 3

    const-string v0, "\\s+#.+$"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "->"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    aget-object v0, p1, v0

    iget-object v1, p0, Luk/ac/ed/ph/snuggletex/SnugglePackage$5;->this$0:Luk/ac/ed/ph/snuggletex/SnugglePackage;

    const/4 v2, 0x1

    aget-object p1, p1, v2

    const-string v2, "Target command for alias"

    invoke-static {v1, p1, v2}, Luk/ac/ed/ph/snuggletex/SnugglePackage;->access$100(Luk/ac/ed/ph/snuggletex/SnugglePackage;Ljava/lang/String;Ljava/lang/String;)Luk/ac/ed/ph/snuggletex/definitions/MathCharacter;

    move-result-object p1

    iget-object v1, p0, Luk/ac/ed/ph/snuggletex/SnugglePackage$5;->this$0:Luk/ac/ed/ph/snuggletex/SnugglePackage;

    invoke-virtual {v1, v0, p1}, Luk/ac/ed/ph/snuggletex/SnugglePackage;->addMathCharacterCommandAlias(Ljava/lang/String;Luk/ac/ed/ph/snuggletex/definitions/MathCharacter;)Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;

    return-void
.end method
