# The Elder Scrolls III: Morrowind GOTY - Tradução Completa PT-BR

Tradução completa de **The Elder Scrolls III: Morrowind - Game of the Year Edition** para português brasileiro, incluindo o jogo base e as expansões **Tribunal** e **Bloodmoon**.

O pacote principal substitui os três arquivos mestres oficiais:

- `Morrowind.esm`
- `Tribunal.esm`
- `Bloodmoon.esm`

> **Importante:** faça backup dos arquivos originais antes de instalar e inicie um novo jogo após aplicar a tradução.

## Conteúdo do pacote

```text
traducao/
├── Morrowind.esm
├── Tribunal.esm
├── Bloodmoon.esm
└── opcional-questionario-classes/
    ├── Morrowind-classico/
    │   ├── instalar-questionario-classes.bat
    │   ├── instalar-questionario-classes.ps1
    │   └── Morrowind.ini.questionario-classes
    ├── OpenMW/
    │   └── openmw.cfg.questionario-classes
    └── LEIA-ME.txt
```

Os três arquivos `.esm` formam a tradução principal.

A pasta `opcional-questionario-classes` contém a tradução das dez perguntas e das trinta respostas apresentadas durante a criação de personagem. Essa parte é opcional porque o Morrowind armazena esses textos fora dos arquivos `.esm`.

## Links

- GitHub: <https://github.com/isyuricunha/the-elder-scrolls-iii-morrowind-game-of-the-year-edition-traducao-completa-portugues-brasileiro>
- Releases: <https://github.com/isyuricunha/the-elder-scrolls-iii-morrowind-game-of-the-year-edition-traducao-completa-portugues-brasileiro/releases/latest>
- Nexus Mods: <https://www.nexusmods.com/morrowind/mods/59287>
- Discord: <https://discord.gg/uFEwSMwUYb>

## Requisitos

- **The Elder Scrolls III: Morrowind - Game of the Year Edition**
- Expansões **Tribunal** e **Bloodmoon**
- Um programa para extrair o pacote:
  - ZIP: o próprio Windows consegue extrair.
  - 7Z: use o 7-Zip ou outro programa compatível.

## Instalação da tradução principal

### 1. Baixe e extraia o pacote

Baixe `traducao.zip` ou `traducao.7z` pela página de Releases ou pelo Nexus Mods.

Depois de extrair, abra a pasta `traducao`. Nela estarão:

```text
Morrowind.esm
Tribunal.esm
Bloodmoon.esm
```

### 2. Localize a pasta do jogo

A tradução principal deve ser instalada na pasta `Data Files` do Morrowind.

Alguns caminhos comuns:

```text
C:\Program Files (x86)\Steam\steamapps\common\Morrowind\Data Files
C:\Program Files\Steam\SteamApps\common\Morrowind\Data Files
C:\Program Files (x86)\GOG Galaxy\Games\Morrowind\Data Files
C:\GOG Games\Morrowind\Data Files
C:\Program Files\Bethesda Softworks\Morrowind\Data Files
```

Em instalações personalizadas, procure a pasta que contém `Morrowind.exe`. Dentro dela haverá a pasta `Data Files`.

Na Steam:

1. Clique com o botão direito em **Morrowind**.
2. Abra **Gerenciar > Procurar arquivos locais**.
3. Entre na pasta `Data Files`.

### 3. Faça backup dos arquivos originais

Dentro de `Data Files`, localize:

```text
Morrowind.esm
Tribunal.esm
Bloodmoon.esm
```

Crie uma pasta chamada `backup-original` e copie os três arquivos originais para ela.

Não pule esta etapa. A tradução substitui os arquivos mestres oficiais.

### 4. Copie os arquivos traduzidos

Copie os três `.esm` da tradução para a pasta `Data Files` e confirme a substituição quando o Windows perguntar.

Depois da cópia, abra o jogo normalmente. Não é necessário ativar nenhum mod no launcher.

> **Recomendação:** inicie um novo jogo depois de instalar ou atualizar a tradução.

## Questionário de criação de classe em PT-BR - opcional

Durante a criação do personagem, o jogo pode fazer dez perguntas para sugerir uma classe.

Essas perguntas não ficam dentro de `Morrowind.esm`. No Morrowind clássico, elas ficam em `Morrowind.ini`. No OpenMW, elas são configuradas por entradas `fallback` no `openmw.cfg`.

O novo `Morrowind.esm` já corrige o erro que podia aparecer ao terminar o questionário, como:

```text
Unable to locate Class "Ladrao"
```

Portanto, quem instalar somente os três `.esm` poderá concluir a criação do personagem normalmente. Porém, sem instalar o complemento opcional, as dez perguntas continuarão em inglês.

### Morrowind clássico no Windows

1. Abra:

```text
opcional-questionario-classes\Morrowind-classico
```

1. Copie a pasta `Morrowind-classico` inteira para a pasta principal do jogo, a mesma que contém:

```text
Morrowind.exe
Morrowind.ini
Data Files
```

1. Abra a pasta copiada e execute:

```text
instalar-questionario-classes.bat
```

O instalador:

- encontra o `Morrowind.ini` próximo à pasta copiada;
- cria um backup com data e hora;
- substitui somente as seções `[Question 1]` até `[Question 10]`;
- mantém as demais configurações do jogo;
- pode ser executado novamente sem duplicar as seções.

Se o jogo estiver instalado em `Program Files` e o Windows negar permissão, execute o arquivo `.bat` como administrador.

### OpenMW

Abra:

```text
opcional-questionario-classes\OpenMW\openmw.cfg.questionario-classes
```

Copie todas as linhas iniciadas por `fallback=` e cole no final do `openmw.cfg` usado pela sua instalação do OpenMW.

O local do `openmw.cfg` depende do sistema operacional e da instalação do OpenMW.

### Linux, macOS, Wine e Proton

O instalador `.bat` foi feito para Windows.

Em Linux, macOS, Wine ou Proton, instale os três `.esm` normalmente e aplique a tradução do questionário manualmente:

- Morrowind clássico: use o conteúdo de `Morrowind.ini.questionario-classes`.
- OpenMW: use o conteúdo de `openmw.cfg.questionario-classes`.

## Como atualizar

Quando uma nova versão for publicada:

1. Baixe o pacote atualizado.
2. Faça outro backup, caso queira preservar a versão anterior.
3. Substitua novamente os três `.esm` em `Data Files`.
4. Se houver alterações no questionário opcional, execute novamente o instalador ou atualize as entradas do OpenMW.
5. Inicie um novo jogo quando a atualização alterar diálogos, scripts ou registros importantes.

## Como remover a tradução

### Tradução principal

1. Abra `Data Files`.
2. Copie os três arquivos guardados em `backup-original`.
3. Cole-os novamente em `Data Files`.
4. Confirme a substituição.

Também é possível verificar a integridade dos arquivos pela Steam ou GOG Galaxy, mas isso pode desfazer outras modificações instaladas.

### Questionário opcional

O instalador cria um arquivo semelhante a:

```text
Morrowind.ini.backup-20260727-153000
```

Para restaurar:

1. Feche o jogo.
2. Renomeie o `Morrowind.ini` atual para guardar uma cópia.
3. Renomeie o backup escolhido para `Morrowind.ini`.

No OpenMW, remova do `openmw.cfg` as linhas copiadas do arquivo `openmw.cfg.questionario-classes`.

## Solução de problemas

### O jogo continua em inglês

Confirme que os três arquivos foram copiados para a pasta `Data Files` realmente usada pelo jogo.

Se houver mais de uma instalação do Morrowind, talvez os arquivos tenham sido copiados para a instalação errada.

### O questionário continua em inglês

Os três `.esm` não contêm os textos das perguntas.

- Morrowind clássico: execute `instalar-questionario-classes.bat`.
- OpenMW: adicione as linhas do arquivo `openmw.cfg.questionario-classes` ao seu `openmw.cfg`.

### O instalador não encontra o Morrowind.ini

Copie a pasta `Morrowind-classico` para a pasta principal do jogo, ao lado de `Morrowind.exe` e `Morrowind.ini`, e execute o `.bat` novamente.

Não execute o instalador diretamente da pasta `Downloads`.

### O Windows não permite substituir os arquivos

Feche o jogo e o launcher.

Se o Morrowind estiver instalado dentro de `Program Files`, o Windows pode solicitar permissão de administrador.

### Não encontrei a pasta Data Files

Pesquise no computador por `Morrowind.esm`. A pasta que contém esse arquivo normalmente é a `Data Files` correta.

### Uso OpenMW

Substitua os `.esm` na pasta de dados que o OpenMW realmente carrega.

Se o OpenMW usa uma cópia separada dos arquivos do jogo, alterar a pasta da Steam ou GOG não será suficiente.

## Compatibilidade

| Ambiente | Tradução principal `.esm` | Questionário opcional |
|---|---:|---:|
| Morrowind clássico no Windows | Sim | Instalador `.bat` |
| Steam no Windows | Sim | Instalador `.bat` |
| GOG no Windows | Sim | Instalador `.bat` |
| Instalação personalizada no Windows | Sim | Instalador `.bat` |
| OpenMW no Windows | Sim | Configuração manual |
| OpenMW no Linux/macOS | Sim | Configuração manual |
| Morrowind clássico via Wine/Proton | Sim | Configuração manual recomendada |

## Suporte

Para dúvidas, relatos de erros e sugestões, participe da comunidade:

<https://discord.gg/uFEwSMwUYb>

Ao relatar um problema, informe:

- se usa Morrowind clássico ou OpenMW;
- onde adquiriu o jogo;
- se iniciou um novo jogo;
- qual versão da tradução está instalada;
- uma captura de tela do texto ou erro.

## Apoio

Se você gostou da tradução e deseja apoiar o trabalho, a chave PIX é:

```text
pix@yuricunha.com
```

Obrigado por apoiar traduções de jogos para português brasileiro.

QUESTIONÁRIO DE CRIAÇÃO DE CLASSE EM PT-BR - OPCIONAL

Este complemento traduz as 10 perguntas e as 30 respostas exibidas durante a criação de personagem.

IMPORTANTE

- O novo Morrowind.esm já corrige o erro de classe ao terminar o questionário.
- Este complemento serve apenas para traduzir as perguntas e respostas.
- Quem não quiser instalar pode ignorar esta pasta.
- O restante do jogo continuará traduzido normalmente.

MORROWIND CLÁSSICO NO WINDOWS

1. Copie a pasta "Morrowind-classico" inteira para a pasta principal do jogo.
2. A pasta principal é a mesma que contém:
   - Morrowind.exe
   - Morrowind.ini
   - Data Files
3. Abra a pasta copiada.
4. Execute "instalar-questionario-classes.bat".

O instalador cria um backup do Morrowind.ini e altera somente as seções [Question 1] até [Question 10].

Se o Windows negar permissão, execute o BAT como administrador.

OPENMW

1. Abra a pasta "OpenMW".
2. Abra "openmw.cfg.questionario-classes".
3. Copie todas as linhas iniciadas por "fallback=".
4. Cole no final do openmw.cfg usado pelo seu OpenMW.

LINUX, MACOS, WINE E PROTON

O instalador BAT foi feito para Windows.

Use:

- "Morrowind.ini.questionario-classes" para o Morrowind clássico;
- "openmw.cfg.questionario-classes" para o OpenMW.

RESTAURAÇÃO

O instalador do Morrowind clássico cria um arquivo semelhante a:

Morrowind.ini.backup-20260727-153000

Para restaurar:

1. Feche o jogo.
2. Guarde ou renomeie o Morrowind.ini atual.
3. Renomeie o backup escolhido para Morrowind.ini.
