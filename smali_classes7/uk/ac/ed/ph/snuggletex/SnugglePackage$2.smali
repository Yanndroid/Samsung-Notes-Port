.class Luk/ac/ed/ph/snuggletex/SnugglePackage$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Luk/ac/ed/ph/snuggletex/SnugglePackage$LineHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Luk/ac/ed/ph/snuggletex/SnugglePackage;->loadMathCharacterDefinitions(Ljava/lang/String;)V
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

    iput-object p1, p0, Luk/ac/ed/ph/snuggletex/SnugglePackage$2;->this$0:Luk/ac/ed/ph/snuggletex/SnugglePackage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleLine(Ljava/lang/String;)V
    .locals 3

    const-string v0, ":"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    aget-object v0, p1, v0

    const/16 v1, 0x10

    invoke-static {v0, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    aget-object v1, p1, v1

    invoke-static {v1}, Luk/ac/ed/ph/snuggletex/internal/util/StringUtilities;->nullIfEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    aget-object p1, p1, v2

    invoke-static {p1}, Luk/ac/ed/ph/snuggletex/definitions/MathCharacter$MathCharacterType;->valueOf(Ljava/lang/String;)Luk/ac/ed/ph/snuggletex/definitions/MathCharacter$MathCharacterType;

    move-result-object p1

    new-instance v2, Luk/ac/ed/ph/snuggletex/definitions/MathCharacter;

    invoke-direct {v2, v0, v1, p1}, Luk/ac/ed/ph/snuggletex/definitions/MathCharacter;-><init>(ILjava/lang/String;Luk/ac/ed/ph/snuggletex/definitions/MathCharacter$MathCharacterType;)V

    iget-object p1, p0, Luk/ac/ed/ph/snuggletex/SnugglePackage$2;->this$0:Luk/ac/ed/ph/snuggletex/SnugglePackage;

    invoke-static {p1}, Luk/ac/ed/ph/snuggletex/SnugglePackage;->access$000(Luk/ac/ed/ph/snuggletex/SnugglePackage;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v1, :cond_0

    iget-object p1, p0, Luk/ac/ed/ph/snuggletex/SnugglePackage$2;->this$0:Luk/ac/ed/ph/snuggletex/SnugglePackage;

    invoke-virtual {p1, v2}, Luk/ac/ed/ph/snuggletex/SnugglePackage;->addMathCharacterCommand(Luk/ac/ed/ph/snuggletex/definitions/MathCharacter;)Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;

    :cond_0
    return-void
.end method
